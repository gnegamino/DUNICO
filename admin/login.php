<?php 
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
				<div id="messagebox"></div>
				<input id="username" type="text" class="form-control" placeholder="Username">
				<input id="password" type="password" class="form-control" placeholder="Password">
				<button id="login" class="btn btn-primary form-control">LOGIN</button>
			</div>
		</div>
	</body>
</html>
<script type="text/javascript" src="helpers/error_helper.js"></script>