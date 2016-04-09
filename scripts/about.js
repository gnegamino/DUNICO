$(function(){
	$("#profile-bc li a", this).click(function(){
		if($(this).html() == "OUR FOUNDER"){
			$(this).closest("ol").find(".active").removeClass("active");
			$(this).parent().addClass("active");
			
			$("#our-profile").fadeOut(function(){
				$("#our-founder").fadeIn();
			});
		}else if($(this).html() == "OUR PROFILE"){
			$(this).closest("ol").find(".active").removeClass("active");
			$(this).parent().addClass("active");
			$("#our-founder").fadeOut(function(){
				$("#our-profile").fadeIn();
			});
		}
	});
});