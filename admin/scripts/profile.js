var backstage = "../admin/backstage/profile_bs.php";

$(function(){
	select_data();

	$('#update_password').click(function(){
		clear_message_box();
		update_password();
	});

	$('#update_profile').click(function(){
		clear_message_box();
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
			$('#first_name').val(response.first_name);
			$('#last_name').val(response.last_name);
			$('#address').val(response.address);
			$('#contact_number').val(response.contact_number);
			$('#email_address').val(response.email_address);
			$('#website').val(response.website);
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