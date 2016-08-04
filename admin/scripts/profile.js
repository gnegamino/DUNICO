var backstage = "../admin/backstage/profile_bs.php";

$(function(){
	select_data();

	$('#update_password').click(function(){
		clear_message_box();

		var new_password = $('#new_password').val();
		var confirm_password = $('#confirm_password').val();

		if(new_password.isEmpty() || confirm_password.isEmpty())
			build_message_box('messagebox_1', "Please complete all of the fields!", 'danger');
		else if (new_password !== confirm_password)
			build_message_box('messagebox_1', "Passwords do not match!", 'danger');
		else if (new_password.length <= 7 || confirm_password.length <= 7)
			build_message_box('messagebox_1', "Passwords must have have 7 characters minimum!", 'danger');
		else
			update_password();
	});

	$('#update_profile').click(function(){
		clear_message_box();

		if( $('#first_name').val().isEmpty() ||
		 	$('#last_name').val().isEmpty()){
			build_message_box('messagebox_2', "Please complete all of the fields!", 'danger');
		}else	
			update_profile();
	});
});

function select_data() {
	var arr = {
		fnc : 'select_data'
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {
			$('#first_name').val(response.data.first_name);
			$('#last_name').val(response.data.last_name);
			$('#address').val(response.data.address);
			$('#contact_number').val(response.data.contact_number);
			$('#email_address').val(response.data.email_address);
			$('#website').val(response.data.website);
		}       
	});

}

function update_password(){
	var arr = {
		fnc : 'update_password',
		new_password : $('#new_password').val(),
		confirm_password : $('#confirm_password').val()
	};

	$.ajax(backstage, {
		type : 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response){
			clear_message_box();

			if(response.error != ''){
				build_message_box('messagebox_1', response.error, 'danger');
			}else{
				$('#messagebox_1').addClass('lblmsg success dark').html('Successfully changed your password!');
				setTimeout(function() { 
					$("#change_password").modal('hide'); 
					clear_message_box();
				}, 2000);
			}
		}
	});
}

function update_profile(){
	var arr = {
		fnc : 'update_profile',
		first_name : $('#first_name').val(),
		last_name : $('#last_name').val(),
		address : $('#address').val(),
		contact_number : $('#contact_number').val(),
		email_address : $('#email_address').val(),
		website : $('#website').val()
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response){
			if(response.error != ''){
				build_message_box('messagebox_1', response.error, 'danger');
			}else{
				$('#messagebox_2').addClass('lblmsg success').html('Successfully updated your profile!');
			}
		}
	});
}