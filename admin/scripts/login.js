$(function(){
	var backstage = "../admin/backstage/login_bs.php";

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

				$("#messagebox_2").html(response.error);
				if(response.error != '')
				{
					build_message_box('messagebox_1', response.error, 'danger');
				}else if(response)
				{
					$("#messagebox_2").html(response);
				}
			}       
		});
	}
});