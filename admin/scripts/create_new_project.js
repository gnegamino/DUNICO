var backstage = "../admin/backstage/create_new_project_bs.php";

$(function(){
	get_category_list();

	$('#temp-images').change(function(){

		var arr = {
			fnc : 'select_data'
		};

		$("#upload-images").ajaxForm({
			type: 'POST',
			dataType: 'JSON',
            success: function(response){
            	var preview = '', x;

            	for(x in response.data){
					preview += '<div class="a-project-image">';
					preview += '<img src="../arch/'+ response.data[x].image_name +'">';
					preview += '<i class="fa fa-close fa-lg"></i>';
					preview += '</div>';
            	}

            	$('#to_be_uploaded').append(preview);
            }
        }).submit();
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

	$('#save_project').click(function(){
		var arr = [], arr_checkimages = [];
		var error_html = '';

		if( $('#project_name').val().isEmpty() ||
			$('#project_description').val().isEmpty() || 
			$('#year_established').val().isEmpty()){
			error_html += '<div class="lblmsg danger">Please complete all the necessary fields!</div>';
		}

		$('#to_be_uploaded img').each(function(){
			var imgSrc = $(this).attr('src').replace('../arch/','');
			arr_checkimages.push(imgSrc);
		});

		if(arr_checkimages[0] == undefined){
			error_html += '<div class="lblmsg danger">Please upload at least one image!</div>';
		}

		if(error_html == ''){
			$('#messagebox').html("");

			$('#to_be_uploaded img').each(function(){
				var imgSrc = $(this).attr('src').replace('../arch/','');
				arr.push(imgSrc);
			});

			var request = {
				fnc : 'save_project',
				project_name : $('#project_name').val(),
				project_description : $('#project_description').val(),
				category_id : $('#category_list').val(),
				year_established : $('#year_established').val(),
				arr_uploadimages : arr
			};

			$.ajax(backstage, {
				type: 'POST',
				dataType: 'JSON',
				data: 'data=' + JSON.stringify(request),
				success: function(response) {

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


function isEmpty(str) {
    return (!str || 0 === str.length);
}
function isBlank(str) {
    return (!str || /^\s*$/.test(str));
}
String.prototype.isEmpty = function() {
    return (this.length === 0 || !this.trim());
};