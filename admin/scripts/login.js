$(function(){
	$("#login").click(function(){
		if(validateForm()){
			window.location.href = "<? login.php ?>";
		}
		else{
			$("#lbl_status").html("Please input your user credentials!");
		}
	});

	function validateForm() {
		var username = $("#username").val();
		var password = $("#username").val();

	    if (username == null || 
	    	password == null ||
	    	username == "" ||
	    	password == "") {
	        return false;
	    }else
	    	return true;
	}
});