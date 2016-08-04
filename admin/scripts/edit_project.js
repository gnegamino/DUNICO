var backstage = "../admin/backstage/edit_project_bs.php";

$(function(){
	get_category_list();
	select_data();
	image_preview();

	$('#temp-images').change(function(){

		var arr = {
			fnc : 'select_data'
		};

		$("#upload-images").ajaxForm({
			type: 'POST',
			dataType: 'JSON',
            success: function(response){
            	if(response.error == ''){
	            	var preview = '', x;

	            	for(x in response.data){
						preview += '<div class="a-project-image">';
						preview += '<img src="../arch/'+ response.data[x].image_name +'">';
						preview += '<i class="fa fa-close fa-lg"></i>';
						preview += '</div>';
	            	}

	            	$('#to_be_uploaded').append(preview);
	            }else
	            	$('#messagebox').addClass('lblmsg danger').html(response.error);
	        }
        }).submit();
	});


	var toBeRemovedImages = [];

	$('#preview').on('click', '.a-project-image i', function(){
		toBeRemovedImages.push($(this).closest('.a-project-image').find('img').attr('src').replace('../arch/',''));
		$(this).closest('.a-project-image').remove();
	});

	$('#to_be_uploaded').on('click', '.a-project-image i', function(){

		var request = {
			fnc : 'remove_image',
			image : $(this).closest('.a-project-image').find('img').attr('src')
		};

		$.ajax(backstage, {
			type: 'POST',
			dataType: 'JSON',
			data: 'data=' + JSON.stringify(request),
			success: function(response) {

			}  
		});

		$(this).closest('.a-project-image').remove();
	});

	$('#update_project').click(function(){
		var arr = [], 
			arr_checkimages = [],
			arr_checkexistingimages = [];

		var error_html = '';

		if( $('#project_name').val().isEmpty() ||
			$('#project_description').val().isEmpty()){
			error_html += '<div class="lblmsg danger">Please complete all the necessary fields!</div>';
		}

		$('#preview img').each(function(){
			var imgSrc = $(this).attr('src').replace('../arch/','');
			arr_checkexistingimages.push(imgSrc);
		});

		$('#to_be_uploaded img').each(function(){
			var imgSrc = $(this).attr('src').replace('../arch/','');
			arr_checkimages.push(imgSrc);
		});

		if(arr_checkimages[0] == undefined && arr_checkexistingimages[0] == undefined){
			error_html += '<div class="lblmsg danger">Please upload at least one image!</div>';
		}


		if(error_html == ''){
			$('#messagebox').html("");

			$('#to_be_uploaded img').each(function(){
				var imgSrc = $(this).attr('src').replace('../arch/','');
				arr.push(imgSrc);
			});

			var request = {
				fnc : 'update_project',
				project_name : $('#project_name').val(),
				project_description : $('#project_description').val(),
				category_id : $('#category_list').val(),
				year_established : $('#year_established').val(),
				arr_uploadimages : arr,
				arr_removeimages : toBeRemovedImages
 			};

			$.ajax(backstage, {
				type: 'POST',
				dataType: 'JSON',
				data: 'data=' + JSON.stringify(request),
				success: function(response) {
					$('#messagebox').removeClass().addClass('lblmsg success').html("Successfully updated the changes!");
				}  
			});
		}else{
			$("#messagebox").html(error_html);
			return;
		}
	});
});

function get_category_list()
{
	var arr = {
		fnc : 'get_category_list'
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {
			if(response.error == ''){
				var html = '';

				for(x in response.category){
					html += "<option value='"+ response.category[x].category_id +"'>"+ response.category[x].category_name +"</option>";
				}

				$('#category_list').html(html);
			}
		}  
	});
}

function select_data() {
	var arr = {
		fnc : 'select_data'
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {
			$('#project_name').val(response.data.project_name);
			$('#project_description').val(response.data.project_description);
			$('#category_list').val(response.data.category_id);
			$('#year_established').val(response.data.year_established);
		}       
	});
}

function image_preview() {
	var arr = {
		fnc : 'image_preview'
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {
			clear_message_box();

			if(response.error != '')
				build_message_box('messagebox_1', response.error, 'danger');
			else
			{
				var preview = '', x;

				for(x in response.data)
				{
					preview += '<div class="a-project-image">';
					preview += '<img src="../arch/'+ response.data[x].filename +'">';
					preview += '<i class="fa fa-close fa-lg"></i>';
					preview += '</div>';
				}

				$('#preview').html(preview);

			}
		}       
	});
}

