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
            	if(response.error == ''){
	            	var preview = '', x;
					$('#messagebox').html("");

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

	$('#category_manager').click(function(){
		$('#categoryManager').modal('show');
	});

	$('#create_new_category').click(function(){
		var category_str = $('#category_str').val();

		if(category_str.isEmpty())
			$('#categoryManager #messagebox').removeClass().addClass('lblmsg danger').html('Enter a category name!');
		else{
			$('#categoryManager #messagebox').html("");

			var request = {
				fnc : 'add_category',
				category_str : category_str
			};

			$.ajax(backstage, {
				type: 'POST',
				dataType: 'JSON',
				data: 'data=' + JSON.stringify(request),
				success: function(response) {
					if(response.error == ''){
						$('#categoryManager #messagebox').removeClass().addClass('lblmsg success dark').html('Added new category!');
						get_category_list();
					}else
						$('#categoryManager #messagebox').removeClass().addClass('lblmsg danger').html(response.error);
					
				}  
			});

			
		}
	});

	$('#tbl').on('click', '.delete_category', function(){
		$('#category_tobedeleted').val($(this).attr('data-category-id'));
		$('#deleteCategory').modal('show');
	});

	$('#tbl').on('click', '.rename_category', function(){
		$(this).addClass('hide');
		var originalText = $(this).closest('tr').find('span');
		originalText.hide();

		$(this).closest('tr').find('input[type="text"]').val(originalText.html());
		$(this).closest('tr').find('input[type="text"]').removeClass('hide');
		$(this).closest('tr').find('.delete_category').addClass('hide');
		$(this).closest('tr').find('.save_category').removeClass('hide');
		$(this).closest('tr').find('.cancel_category').removeClass('hide'); 
	});

	$('#tbl').on('click', '.cancel_category', function(){
		$(this).closest('tr').find('span').show();
		$(this).closest('tr').find('input[type="text"]').addClass('hide');
		$(this).closest('tr').find('.delete_category').removeClass('hide');
		$(this).closest('tr').find('.rename_category').removeClass('hide');
		$(this).closest('tr').find('.save_category').addClass('hide');
		$(this).addClass('hide');
	});

	$('#tbl').on('click', '.save_category', function(){
		var rename_category_id = $(this).attr('data-category-id'); 
		var rename_input = $(this).closest('tr').find('input[type="text"]').val();

		if(rename_input.isEmpty()){
			$('#categoryManager #messagebox').removeClass().addClass('lblmsg danger').html('Please complete the fields!');
		}else{
			$('#categoryManager #messagebox').html('');

			var request = {
				fnc : 'update_category',
				rename_category_id : rename_category_id,
				rename_input : rename_input
			};

			$.ajax(backstage, {
				type: 'POST',
				dataType: 'JSON',
				data: 'data=' + JSON.stringify(request),
				success: function(response) {
					if(response.error == ''){
						$('#categoryManager #messagebox').removeClass().addClass('lblmsg success dark').html("Successfully renamed the category!");
						get_category_list();
					}else{
						$('#categoryManager #messagebox').removeClass().addClass('lblmsg danger').html(response.error);
					}
				}  
			});
		}
	});

	$('#btn_password').click(function(){
		var password_str = $("#password_str").val();
		var category_tobedeleted = $('#category_tobedeleted').val();

		if(password_str.isEmpty())
			$('#deleteCategory #messagebox').removeClass().addClass('lblmsg danger').html('Please enter your password!');
		else{
			var request = {
				fnc : 'check_user_password',
				password_str : password_str,
				category_tobedeleted : category_tobedeleted
			};

			$.ajax(backstage, {
				type: 'POST',
				dataType: 'JSON',
				data: 'data=' + JSON.stringify(request),
				success: function(response) {
					if(response.error == ''){
						$('#categoryManager #messagebox').html('');
						alert("Category has been successfully deleted!");
						get_category_list();
						$('#deleteCategory').modal('hide');
					}else{
						$('#deleteCategory #messagebox').removeClass().addClass('lblmsg danger').html(response.error);
					}
				}  
			});
		}
	});

	$('#save_project').click(function(){
		var arr = [], arr_checkimages = [];
		var error_html = '';

		if( $('#project_name').val().isEmpty() ||
			$('#project_description').val().isEmpty()){
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
					alert("Successfully created the project!");
					window.location.href = "project_manager.php";
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
	var html = '', tableheader, tabledata;
	$('#categoryManager #tbl table').html('');

	var arr = {
		fnc : 'get_category_list'
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {
			if(response.error == ''){
				tableheader += '<tr class="tableheader">';
				tableheader += '<td>Category Name</td>';
				tableheader += '<td></td>';
				tableheader += '</tr>';

				for(x in response.category){
					html += "<option value='"+ response.category[x].category_id +"'>"+ response.category[x].category_name +"</option>";

					tabledata += '<tr class="tablerow">';
					tabledata += '<td class="tdcategoryname"><span>'+ response.category[x].category_name +'</span><input type="text" class="form-control hide" value="'+ response.category[x].category_name +'"></td>';
					tabledata += '<td class="tddelete" align="right"><input data-category-id="'+ response.category[x].category_id +'" type="button" class="btn btn-danger delete_category" value="Delete">';
					tabledata += '&nbsp;<input data-category-id="'+ response.category[x].category_id +'" type="button" class="btn btn-success rename_category" value="Rename">';
					tabledata += '&nbsp;<input data-category-id="'+ response.category[x].category_id +'" type="button" class="btn btn-success save_category hide" value="Save">';
					tabledata += '&nbsp;<input type="button" class="btn btn-danger cancel_category hide" value="Cancel"></td>';
					tabledata += '</tr>';
				}

				$("#messagebox").html("");
				$("#save_project").prop('disabled', false);
				$('#category_list').html(html);
				$('#categoryManager #tbl table').html(tableheader + tabledata);
			}else{
				$("#category_list").html("");
				$("#save_project").prop('disabled', true);
				$("#messagebox").removeClass().addClass('lblmsg danger').html(response.error);
			}
		}  
	});
}



