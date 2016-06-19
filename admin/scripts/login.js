var backstage = "../admin/backstage/login_bs.php";

$(function(){
	$('#username').focus();
	
	$(document).keypress(function(e) {
	    if(e.which == 13)
			check_user_login();
	});

	$("#login").click(function(){
		check_user_login();
	});

	function check_user_login() {
		var username_val	= $("#username").val();
		var password_val 	= $("#password").val();

		var arr = 	{ 
						fnc : 'check_user', 
						user_name : username_val, 
						password : password_val
					};

		$.ajax(backstage, {
			type: "POST",
			dataType: "JSON",
			data: 'data=' + JSON.stringify(arr),
			success: function(response) {
				clear_message_box();

				if(response.error != ''){
					build_message_box('messagebox_1', response.error, 'danger');
				}
				else{
					$("#messagebox_2").addClass('lblmsg success dark').html('Connected!').promise().done(function(){
						window.location.href = "home.php";
					});
				}
			}       
		});
	}
});