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

});