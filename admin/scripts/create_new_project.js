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
					preview += '</div>';
            	}

            	$('#to_be_uploaded').append(preview);
            }
        }).submit();
	});

	$('#save_project').click(function(){
		var arr = [];

		$('#to_be_uploaded img').each(function(){
			var imgSrc = $(this).attr('src').replace('../arch/','');
			arr.push(imgSrc);
		});

		if(arr[0] == undefined){
			$('#messagebox').html('Please Upload at least one image!');
			return;
		}else{
			$('#messagebox').html("");
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

