$(function(){
	$("#projects .p-container .p-image", this).mouseover(function(){
		$(this).css("opacity", "1");
		$(".p-caption", this).show();
	}).mouseout(function(){
		$(this).css("opacity", "0.8");
		$(".p-caption", this).hide();
	}).stop();
});