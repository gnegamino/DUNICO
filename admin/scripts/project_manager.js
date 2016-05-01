var backstage = "../admin/backstage/project_manager_bs.php";

$(function(){
	select_data("name");

	$(document).on("change", "#check_all" ,function(){
		$("#tbl input:checkbox").prop('checked', $(this).prop("checked"));
	});

	$(document).on("click", ".tablerow" ,function(){
		var project_id = $(this).find('.tdprojectchkbx input:checkbox').val();
		window.location.href = "edit_project.php?project_id=" + project_id;
	});

	$("#sort").change(function(){
		var sort = $(this).val();
		select_data(sort);
	});
});

function select_data(sort) {
	var arr = {
		fnc : 'select_data',
		sort : sort
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {

			$('#tbl table').html("");

			var tableheader, tabledata, x;

			tableheader += '<tr class="tableheader">';
			tableheader += '<td><input type="checkbox" id="check_all"></td>';
			tableheader += '<td class="tdprojectname">Project Name</td>';
			tableheader += '<td class="tdprojectdescription">Description</td>';
			tableheader += '<td class="tdcategory">Category</td>';
			tableheader += '<td class="tdyearestablished">Year Established</td>';
			tableheader += '<td class="tdnofpictures">No. of Pictures</td>';
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
				tabledata += '<td class="tdnoofpictures">' + response.data[x].no_of_pictures + '</td>';
				tabledata += '<td class="tdisactive">' + response.data[x].is_active + '</td>';
				tabledata += '</tr>';
			}

			$('#tbl table').html(tableheader + tabledata);
		}       
	});

}
