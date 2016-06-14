var backstage = "../backstage/page_manager_bs.php";

$(function(){
	tinymce.init({
		selector: 'textarea',
		height: 50,
		toolbar: 'undo redo | bold italic | alignleft aligncenter alignright alignjustify',
		content_css: [
			'//fast.fonts.net/cssapi/e6dc9b99-64fe-4292-ad98-6974f93cd2a2.css',
			'//www.tinymce.com/css/codepen.min.css'
		]
	});

	$("#Save").click(function(){
		tinyMCE.get('our_services').getContent({format : 'raw'});
	});
});

function get_projects()
{
	var arr = {
		fnc : 'get_projects'
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {

		}       
	});
}
