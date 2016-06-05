var backstage = "../backstage/projects_bs.php";

$(function(){

	get_category();
	get_projects(1);


	$('#project_category').on('click', 'a', function(){
		var category_id = $(this).attr('data-category-id');
		get_projects(category_id);
	});

	$("#project_gallery").on({
	    mouseenter: function() {
	        $(this).css("opacity", "1");
			$(".p-caption", this).show();
	    },
	    mouseleave: function() {
	        $(this).css("opacity", "0.8");
			$(".p-caption", this).hide();
	    }
	}, ".p-image");
});


function get_category() {

	var arr = {
		fnc : 'get_category'
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {

			var projectCategory = '',
				projectGallery = '';

			for(x in response.category)
			{
				projectCategory += '<li><a data-category-id="' + response.category[x].category_id + '" href="#">' + response.category[x].category_name + '</a></li>'; // Project Category

			}

			$('#project_category').html(projectCategory);
		}       
	});
}

function get_projects(category_id)
{
	var arr = {
		fnc : 'get_projects',
		category_id : category_id
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {

			var projectGallery = '';

			for(x in response.projects)
			{
				projectGallery += '<a href="project_detail.php?project_id=' + response.projects[x].project_id + '"><div class="p-image">';
				projectGallery += '<img src="arch/' + response.project_images[x].filename + '"/>';
				projectGallery += '<div class="p-caption">' + response.projects[x].project_name + '</div></div></a>';
			}

			$('#project_gallery').html(projectGallery);
		}       
	});
}
