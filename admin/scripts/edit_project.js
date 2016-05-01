var backstage = "../admin/backstage/edit_project_bs.php";

$(function(){
	select_data();
	image_preview();
});

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
			$('#category_name').val(response.data.category_name);
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
					preview += '</div>';
				}

				$('#preview').html(preview);

			}
		}       
	});
}
