var backstage = "../admin/backstage/project_manager_bs.php";

$(function(){
	select_data("", "date_modified");
	$('#restore_selected').hide();

	$(document).on("change", "#check_all" ,function(){
		$("#tbl input:checkbox").prop('checked', $(this).prop("checked"));
	});

	$(document).on("click", ".tablerow" ,function(e){
	    if (e.target.type == "checkbox") {
	        e.stopPropagation();
	    }else{
	    	if($("#switch_projects").val() == 'View Archived Projects'){
				var project_id = $(this).find('.tdprojectchkbx input:checkbox').val();
				window.location.href = "edit_project.php?project_id=" + project_id;
			}else{
				return;
			}
	    }
	});

	$("#sort_row").click(function(){
		if($(this).val() == 'ASC')
			$(this).val('DESC');
		else
			$(this).val('ASC');
	});

	$("#search").click(function(){
		if($("#switch_projects").val() == 'View Archived Projects')
			select_data($("#search_str").val(), $("#sort_by").val(), $("#sort_row").val(), 1);
		else
			select_data($("#search_str").val(), $("#sort_by").val(), $("#sort_row").val(), 0);
	});

	$("#create_new_project").click(function(){
		window.location.href = "create_new_project.php";
	});

	$("#activate_selected, #deactivate_selected, #delete_selected, #restore_selected").click(function(){

		var buttonMethod = '';

		if($(this).attr('id') == 'activate_selected') 
			buttonMethod = 'activate' 
		else if($(this).attr('id') == 'deactivate_selected')
			buttonMethod = 'deactivate'; 
		else if($(this).attr('id') == 'delete_selected')
			buttonMethod = 'delete';
		else
			buttonMethod = 'restore';

		if($('#tbl .tablerow input:checkbox:checked').length){
			var arr = [];

			$('#tbl .tablerow input:checkbox:checked').each(function(){
				arr.push($(this).val());
			});		

			var request = {
				fnc : 'change_status',
				arr_status : arr,
				method : buttonMethod
			};

			$.ajax(backstage, {
				type: 'POST',
				dataType: 'JSON',
				data: 'data=' + JSON.stringify(request),
				success: function(response) {
					alert('Successfully ' + buttonMethod + 'd the changes!');
					
					if($("#switch_projects").val() == 'View Archived Projects')
						select_data($("#search_str").val(), $("#sort_by").val(), $("#sort_row").val(), 1);
					else
						select_data($("#search_str").val(), $("#sort_by").val(), $("#sort_row").val(), 0);
				}  
			});
		}else
			alert('Please check at least one checkbox!');
	});

	$('#switch_projects').click(function(){
		if($(this).val() == 'View Archived Projects'){
			$("#activate_selected, #deactivate_selected, #delete_selected").prop('disabled', true);
			$("#restore_selected").show();
			$(this).val('View Active Projects');
			select_data("", $("#sort_by").val(), 'DESC', 0);
		}else{
			$("#activate_selected, #deactivate_selected, #delete_selected").prop('disabled', false);
			$("#restore_selected").hide();
			$(this).val('View Archived Projects');
			select_data("", $("#sort_by").val(), 'DESC', 1);
		}
	});
});

function select_data(search_str, sort, sort_row, switch_mode) {
	search_str = (typeof search_str !== 'undefined') ? search_str : '';
	sort_row = (typeof sort_row !== 'undefined') ? sort_row : 'DESC';
	switch_mode = (typeof switch_mode !== 'undefined') ? switch_mode : 1;
	sort = (sort == 'status') ? 'is_active' : sort;

	var arr = {
		fnc : 'select_data',
		search_str : search_str,
		sort : sort,
		sort_row : sort_row,
		switch_mode : switch_mode
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {

			if(response.error == ''){

				$('#messagebox').hide();
				$('#tbl table').html("");

				var tableheader, tabledata, x;

				tableheader += '<tr class="tableheader">';
				tableheader += '<td><input type="checkbox" id="check_all"></td>';
				tableheader += '<td class="tdprojectname">Project Name</td>';
				tableheader += '<td class="tdprojectdescription">Description</td>';
				tableheader += '<td class="tdcategory">Category</td>';
				tableheader += '<td class="tdyearestablished">Year Established</td>';
				tableheader += '<td class="tdstatus">Status</td>';
				tableheader += '</tr>';

				for(x in response.data)
				{
					tabledata += '<tr class="tablerow">';
					tabledata += '<td class="tdprojectchkbx"><input type="checkbox" value="' + response.data[x].project_id + '"></td>';
					tabledata += '<td class="tdprojectname">' + response.data[x].project_name + '</td>';
					tabledata += '<td class="tdprojectdescription">' + response.data[x].project_description + '</td>';
					tabledata += '<td class="tdcategoryname">' + response.data[x].category_name + '</td>';
					tabledata += '<td class="tdyearestablished">' + response.data[x].year_established + '</td>';
					tabledata += '<td class="tdisactive">' + response.data[x].is_active + '</td>';
					tabledata += '</tr>';
				}

				$('#tbl table').html(tableheader + tabledata);
			}else{
				$('#tbl table').html("");
				$('#restore_selected').hide();
				$('#messagebox').show().html('<span class="i-red">' + response.error + '</span>');
			}
		}       
	});

}
