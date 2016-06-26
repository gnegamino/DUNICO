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

<!-- Modal -->
<div class="modal" id="register" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Register</h4>
			</div>
			<div class="modal-body clearfix">
				<table class="tbl-layout">
					<tr>
						<td>First Name:</td>
						<td><input type="text" class="form-control"></td>
					</tr>
				</table>
				<div class="content-split" align="center">
					<div id="messagebox"></div>
				</div>
			</div>
			<div class="modal-footer">
				<input id="register" type="button" class="btn btn-warning" value="Register">
				<button class="btn btn-danger" data-dismiss="modal" aria-label="Close">Cancel</button>
			</div>
		</div>
	</div>
</div>