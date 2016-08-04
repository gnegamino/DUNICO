var backstage = "../backstage/project_detail_bs.php";

$(function(){
	$("#project_detail #featured").carousel("pause");
	$(".backdrop", this).click(function(){
		$(".backdrop").fadeOut();
	});

	$('#project_detail #featured', this).on('slid.bs.carousel', function () {
		var active_first_child = $(".carousel-indicators li:first-child").attr("class");
		if(active_first_child == "active")
			$(".backdrop").fadeIn();
	});

	$('.featured-project').on('click', '#previous_project', function(){
		get_previous_project();
	});

	$('.featured-project').on('click', '#next_project', function(){
		get_next_project();
	});

	get_project_detail();
	get_project_images();

	$('.carousel-inner').click(function(){
		var imageCount = $('.carousel-inner .item').length;
		if(imageCount == 1)
			$(".backdrop").fadeIn();
		else
			return;
	});

});

function get_project_detail()
{
	var arr = {
		fnc : 'get_project_detail',
		project_id : $("#project_id").val()
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {
			var projectDetail = '';

			for(x in response.projects)
			{
				projectDetail += '<h1>'+ response.projects[x].project_name +'</h1>';
				projectDetail += '<p>'+ response.projects[x].project_description +'</p>';
				projectDetail += '<div id="previous_project" class="pull-left p-previous"><i class="fa fa-arrow-left"></i>&nbsp;&nbsp;&nbsp;Previous Project</div>';
				projectDetail += '<div id="next_project" class="pull-right p-next">Next Project&nbsp;&nbsp;&nbsp;<i class="fa fa-arrow-right"></i></div>';
			}

			$('.featured-project').html(projectDetail);
		}       
	});
}

function get_project_images()
{	
	var arr = {
		fnc : 'get_project_images',
		project_id : $("#project_id").val()
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {

			var carouselIndicators = '',
				carouselInner = '';


			for (var i = 0; i < response.project_images.length; i++) {
				carouselIndicators += '<li data-target="#featured" data-slide-to="'+ i +'"></li>';	
			};


			for(x in response.project_images)
			{
				carouselInner += '<div class="item">';
				carouselInner += '<img src="arch/'+ response.project_images[x].filename +'"/><div class="carousel-caption"></div></div>';
			}

			if(response.project_images.length == 1)
				$('#featured .carousel-control').hide();
			
			$('#featured .carousel-indicators').html(carouselIndicators);
			$('#featured .carousel-inner').html(carouselInner);
			$('#featured .carousel-indicators li:first-child').addClass('active');
			$('#featured .carousel-inner .item:first-child').addClass('active');

			$('#featured').carousel();
		}       
	});
}

function get_previous_project()
{
	var arr = {
		fnc : 'get_previous_project',
		project_id : $("#project_id").val()
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {
			for(x in response.previous_project)
			{
				var project_id = response.previous_project[x].project_id;
			}
			
			console.log(project_id);
			window.location.href = "project_detail.php?project_id=" + project_id;
		}       
	});
}

function get_next_project()
{
	var arr = {
		fnc : 'get_next_project',
		project_id : $("#project_id").val()
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {
			for(x in response.next_project)
			{
				var project_id = response.next_project[x].project_id;
			}
			console.log(project_id);
			window.location.href = "project_detail.php?project_id=" + project_id;
		}       
	});
}