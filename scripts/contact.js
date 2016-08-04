var backstage = "backstage/contact_bs.php";

$(function(){
	load_contact();
});

function load_contact()
{
	var arr = {
		fnc : 'load_contact'
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {
			var html = '';

			html += '<div class="each-contact">';
			html += '<h3>' + response.contact.contact_name + '</h3>';
			html += '<p><table cellpadding="3">';
			html += '<tr><td align="center"><i class="fa fa-envelope-o"></i></td><td>' + response.contact.email + '</td></tr>';
			html += '<tr><td align="center"><i class="fa fa-mobile-phone"></i></td><td>' + response.contact.contact_no + '</td></tr>';
			html += '<tr><td align="center"><i class="fa fa-globe"></i></td><td>' + response.contact.website + '</td></tr>';
			html += '</table></p></div>';

			$('#contacts').html(html);
		}       
	});
}