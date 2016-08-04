var backstage = "backstage/services_bs.php";

$(function(){
	load_services();
});

function load_services()
{
	var arr = {
		fnc : 'load_services'
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {
			$('#services_content').html(response.services.our_services);
		}       
	});
}
