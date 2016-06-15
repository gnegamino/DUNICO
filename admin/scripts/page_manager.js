var backstage = "../backstage/page_manager_bs.php";

$(function(){
	$('textarea').summernote({
		height: 250
	});
	$('#motto_content').summernote('disable');
	$('#our_services').summernote('disable');
	$('#our_profile').summernote('disable');
	$('#our_founder').summernote('disable');

	$('.edit').click(function(){
		var panelToEdit = $(this).attr('class').split(' ')[3];

		$(this).val('Save');
		$(this).removeClass('edit home').addClass('save home');

		switch(panelToEdit){
			case 'home':
				$('#motto_content').summernote('enable');
				break;

			case 'services':
				$('#our_services').summernote('enable');
				break;

			case 'about':
				$('#our_profile').summernote('enable');
				$('#our_founder').summernote('enable');
				break;
		}

		$(this).next().attr('disabled', false);
		$(this).closest('.content-split').find('input').attr('disabled', false);
	});


	$('.save').click(function(){
		var panelToSave = $(this).attr('class').split(' ')[3];

				alert();
		switch(panelToSave){
			case 'home':
				break;

			case 'services':
				$('#our_services').summernote('enable');
				break;

			case 'about':
				$('#our_profile').summernote('enable');
				$('#our_founder').summernote('enable');
				break;
		}
	});

	$('.cancel').click(function(){
		var panelToCancel = $(this).closest('.content-split').find('.btn-success').attr('class').split(' ')[3];
		var textareaToDisable = "#" + $(this).closest('.content-split').find('textarea').attr('id');

		switch(panelToCancel){
			case 'about':
				$('#our_profile').summernote('disable');
				$('#our_founder').summernote('disable');
			break;

			default:
				$(textareaToDisable).summernote('disable');
			break;
		}

		$(this).attr('disabled', true);
		$(this).closest('.pull-right').find('.btn-success').val('Edit');
		$(this).closest('.content-split').find('input:text').attr('disabled', true);
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
