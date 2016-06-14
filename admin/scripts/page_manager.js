var backstage = "../backstage/page_manager_bs.php";

$(function(){
	// tinymce.init({
	// 	selector: 'textarea',
 //        editor_selector : "mceEditor",
	// 	height: 50,
	// 	toolbar: 'undo redo | bold italic | alignleft aligncenter alignright alignjustify',
	// 	content_css: [
	// 		'//fast.fonts.net/cssapi/e6dc9b99-64fe-4292-ad98-6974f93cd2a2.css',
	// 		'//www.tinymce.com/css/codepen.min.css'
	// 	]
	// });
	// disable_tinymce();
	// tinymce.init({ selector: 'textarea' });
	$(".save").click(function(){
		var panelToEdit = $(this).attr('class').split(' ')[3];

		switch(panelToEdit){
			case 'home':
				$(this).next().attr('disabled', false);
				$(this).closest('.content-split').find('input').attr('disabled', false);
				break; 
		}
		// enable_tinymce();
	});

	// $(".save.services").click(function(){
	// 	disable_tinymce();
	// });
});


function disable_tinymce() {
  	tinymce.activeEditor.getBody().setAttribute('contenteditable', false);
}
function enable_tinymce() {
  	tinymce.activeEditor.getBody().setAttribute('contenteditable', true);
}

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
