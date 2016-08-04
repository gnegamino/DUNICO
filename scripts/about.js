var backstage = "backstage/about_bs.php";

$(function(){
	load_about();

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

function load_about()
{
	var arr = {
		fnc : 'load_about'
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {
			$('#founder_name').html(response.about.founder_name);
			$('#our_profile').html(response.about.our_profile);
			$('#our_founder').html(response.about.our_founder);
		}       
	});
}