var backstage = "../backstage/page_manager_bs.php";

$(function(){
	$('textarea').summernote({
		height: 250
	});
	$('#motto_content').summernote('disable');
	$('#our_services').summernote('disable');
	$('#our_profile').summernote('disable');
	$('#our_founder').summernote('disable');

	load_home();
	load_services();
	load_about();
	load_contact();
	// load_featured_images();
	load_all_project_images();


	$(document).on('click', '.edit', function(){
		var panelToEdit = $(this).attr('class').split(' ')[3];

		$(this).val('Save');

		switch(panelToEdit){
			case 'home':
				$(this).removeClass('edit home').addClass('save home');
				$('#motto_content').summernote('enable');
				break;

			case 'services':
				$(this).removeClass('edit services').addClass('save services');
				$('#our_services').summernote('enable');
				break;

			case 'about':
				$(this).removeClass('edit about').addClass('save about');
				$('#our_profile').summernote('enable');
				$('#our_founder').summernote('enable');
				break;

			case 'contact':
				$(this).removeClass('edit contact').addClass('save contact');
				break;
		}

		$(this).next().attr('disabled', false);
		$(this).closest('.content-split').find('input').attr('disabled', false);
	});

	$('.cancel').click(function(){
		var panelToCancel = $(this).closest('.content-split').find('.btn-success').attr('class').split(' ')[3];
		var textareaToDisable = "#" + $(this).closest('.content-split').find('textarea').attr('id');

		switch(panelToCancel){
			case 'home':
				$(this).closest('.pull-right').find('.btn-success').removeClass('save home').addClass('edit home').val('Edit');
				break;

			case 'services':
				$(this).closest('.pull-right').find('.btn-success').removeClass('save services').addClass('edit services').val('Edit');
				break;

			case 'about':
				$('#our_profile').summernote('disable');
				$('#our_founder').summernote('disable');
				$(this).closest('.pull-right').find('.btn-success').removeClass('save about').addClass('edit about').val('Edit');
			break;

			case 'contact':
				$(this).closest('.pull-right').find('.btn-success').removeClass('save contact').addClass('edit contact').val('Edit');
			break;
		}

		$(this).attr('disabled', true);
		$(textareaToDisable).summernote('disable');
		$(this).closest('.content-split').find('input:text').attr('disabled', true);
	});

	$(document).on('click', '.save', function(){
		var panelToSave = $(this).attr('class').split(' ')[3];
		
		switch(panelToSave){
			case 'home':
				save_home();
				$(this).removeClass('save home').addClass('edit home');
				$(this).closest('.content-split').find('input:text, .btn-danger').attr('disabled', true);
				$('#motto_content').summernote('disable');
				break;

			case 'services':
				// ajax
				save_services();
				$(this).removeClass('save services').addClass('edit services');
				$(this).closest('.content-split').find('input:text, .btn-danger').attr('disabled', true);
				$('#our_services').summernote('disable');
				break;

			case 'about':
				// ajax
				save_about();
				$(this).removeClass('save about').addClass('edit about');
				$(this).closest('.content-split').find('input:text, .btn-danger').attr('disabled', true);
				$('#our_founder').summernote('disable');
				$('#our_profile').summernote('disable');
				break;

			case 'contact':
				// ajax
				save_contact();
				$(this).removeClass('save contact').addClass('edit contact');
				$(this).closest('.content-split').find('input:text, .btn-danger').attr('disabled', true);
				break;
		}

		$(this).val('Edit');
	});
});

// TO BE FOLLOWED
function load_all_project_images()
{
	var arr = {
		fnc : 'load_all_project_images'
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {
			
			var projectImagesString = '';

			$.each(response.project_images, function(key, array){
				projectImagesString += '<div class="project-name">'+ key +'</div>';

				for (var i = 0; i < array.length; i++) {
					projectImagesString += '<div class="a-project-image">';
					projectImagesString += '<img src="../arch/'+ array[i].filename +'">';
					projectImagesString += '<input data-image-id="' + array[i].image_id + '" type="checkbox">';
					projectImagesString += '</div>';
				}
			});

			$('#all_project_images').html(projectImagesString);
		}
	});
}

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
			$('#motto_caption').val(response.home.motto_caption);
			$('#motto_content').summernote('code',response.home.motto_content);
		}       
	});
}

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
			if(response.error == '')
				$('#our_services').summernote('code', response.services.our_services);
		}       
	});
}

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
			if(response.error == ''){
				$('#company_name').val(response.about.company_name);
				$('#founder_name').val(response.about.founder_name);
				$('#our_founder').summernote('code', response.about.our_founder);
				$('#our_profile').summernote('code', response.about.our_profile);
			}
		}       
	});
}

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
			if (response.error == '') {
				$('#contact_name').val(response.contact.contact_name);
				$('#contact_no').val(response.contact.contact_no);
				$('#email').val(response.contact.email);
				$('#website').val(response.contact.website);
			}
		}       
	});
}

function save_home()
{
	var arr = {
		fnc : 'save_home',
		motto_caption : $('#motto_caption').val(),
		motto_content : encodeURIComponent($('#motto_content').summernote('code'))
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {
			if (response.error == '') {
				alert('Home Page content changes has been saved!');
				load_home();
			}
		}       
	});
}

function save_services()
{
	var arr = {
		fnc : 'save_services',
		our_services : encodeURIComponent($('#our_services').summernote('code'))

	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {
			if (response.error == '') {
				alert('Services Page content changes has been saved!');
				load_services();
			}
		}       
	});
}

function save_about()
{
	var arr = {
		fnc : 'save_about',
		company_name : $('#company_name').val(),
		founder_name : $('#founder_name').val(),
		our_profile : encodeURIComponent($('#our_profile').summernote('code')),
		our_founder : encodeURIComponent($('#our_founder').summernote('code'))
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {
			if (response.error == '') {
				alert('About Page content changes has been saved!');
				load_about();
			}
		}       
	});
}

function save_contact()
{
	var arr = {
		fnc : 'save_contact',
		contact_name : $('#contact_name').val(),
		contact_no : encodeURIComponent($('#contact_no').val()),
		email : $('#email').val(),
		website : $('#website').val()
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {
			if (response.error == '') {
				alert('Contact Page content changes has been saved!');
				load_contact();
			}
		}       
	});
}
