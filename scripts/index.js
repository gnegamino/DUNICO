var backstage = "backstage/index_bs.php";

$(function(){
	load_home();
});

function load_home()
{
	var arr = {
		fnc : 'load_home'
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {
			$('#motto_caption').html(response.home.motto_caption);
			$('#motto_content').html(response.home.motto_content);
		}       
	});
}
