var backstage = "../backstage/projects_bs.php";

$(function(){

	get_category();

	$('#project_category').on('click', 'a', function(){
		$('#project_category li').removeClass();
		$(this).closest('li').addClass('active');

		if(($(this).attr('data-category-id') == undefined))
			get_projects(null, $(this).attr('data-year'));
		else
			get_projects($(this).attr('data-category-id'), null);
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

	$("#by_theme").click(function(){
		get_category();
		$("#by_year").removeClass();
		$("#by_theme").addClass('active');
	});

	$("#by_year").click(function(){
		get_year();
		$("#by_theme").removeClass();
		$("#by_year").addClass('active');
	});

});

function get_category()
{
	var arr = {
		fnc : 'get_category'
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {

			var projectCategory = '';

			for(x in response.category)
			{
				projectCategory += '<li><a data-category-id="' + response.category[x].category_id + '" href="#">' + response.category[x].category_name + '</a></li>'; // Project Category
			}

			$('#project_category').html(projectCategory);

			var firstCategory = $('#project_category li:first-child a');
			firstCategory.closest('li').addClass("active");
			get_projects(firstCategory.attr('data-category-id'), null);
		}       
	});


}

function get_year() {

	var arr = {
		fnc : 'get_year'
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {

			var projectYearEstablished = '';

			for(x in response.year_established)
			{
				projectYearEstablished += '<li><a data-year="' + response.year_established[x].year_established + '" href="#">' + response.year_established[x].year_established + '</a></li>'; // Project Category
			}

			$('#project_category').html(projectYearEstablished);
			var firstYear = $('#project_category li:first-child a');
			firstYear.closest('li').addClass("active");
			get_projects(null, firstYear.attr('data-year'));
		}       
	});
}

function get_projects(category_id, year_established)
{
	var arr = {
		fnc : 'get_projects',
		category_id : (category_id == null) ? null : category_id, 
		year_established : (year_established == null) ? null : year_established, 
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
				projectGallery += '<img src="arch/' + response.projects[x].filename + '"/>';
				projectGallery += '<div class="p-caption">' + response.projects[x].project_name + '</div></div></a>';
			}

			$('#project_gallery').html(projectGallery);
		}       
	});
}
