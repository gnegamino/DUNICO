<?php 
	session_start();
	session_unset(); 
	session_destroy();
	require_once("header.php"); 
?>
<body>
	<div class="black-bg"></div>
	<div class="seamless-bg"></div>
		<div class="container">
			<div class="login">
				<div class="logo">
					D `UN<span class="i-red">I</span>CO
				</div>
				<div id="messagebox_1"></div>
				<div id="messagebox_2"></div>
				<input id="username" type="text" class="form-control" placeholder="Username">
				<input id="password" type="password" class="form-control" placeholder="Password">
				<input id="login" type="submit" class="btn btn-primary form-control" value="LOGIN">
			</div>
		</div>
	</body>
</html>
<script type="text/javascript" src="helpers/error_helper.js"></script>