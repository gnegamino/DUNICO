<?php
	require_once("header.php"); 
	session_start(); 
	$user_id = $_SESSION['user_id'];
	$full_name = $_SESSION['full_name'];
?>
<body class="admin">
	<div class="container-fluid">
		<div class="row">
			<div class="header-credentials clearfix">
				<div class="pull-right">
					Welcome, <?php echo $full_name; ?>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="a-logo">D `UN<span class="i-red">I</span>CO</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<div class="a-sidebar">
					<a href="profile.php"><div>My Profile</div></a>
					<a href="project_manager.php"><div>Project Manager</div></a>
				</div>
			</div>
			<div class="col-md-9">
				<div class="a-maincontent">
					<div class="heading-title">
						My Profile
					</div>
					<div class="content-split clearfix">
						<img src="userpic/gian.jpg" class="userpic">
						<table class="tbl-layout pull-left marg left">
							<tr>
								<td>First Name:</td>
								<td width="260px"><input type="text" id="first_name" class="form-control"></td>
								<td>Contact No:</td>
								<td width="260px"><input type="text" id="contact_number" class="form-control"></textarea></td>
							</tr>
							<tr>
								<td>Last Name:</td>
								<td><input type="text" id="last_name" class="form-control"></td>
								<td>E-mail Address:</td>
								<td><input type="text" id="email_address" class="form-control"></td>
							</tr>
							<tr>
								<td valign="top">Address:</td>
								<td><textarea id="address" class="form-control" rows="3"></textarea></td>
								<td valign="top">Website:</td>
								<td valign="top"><input type="text" id="website" class="form-control"></td>
							</tr>
						</table>
					</div>
					<div class="content-split">
						<div id="messagebox_2"></div>
					</div>
					<div class="content-split" align="right">
						<input type="button" class="btn btn-primary" value="Change Password" data-toggle="modal" data-target="#change_password">
						<input type="submit" id="update_profile" class="btn btn-success" value="Update Profile">
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="helpers/error_helper.js"></script>
</html>

<!-- Modal -->
<div class="modal fade" id="change_password" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Change Password</h4>
			</div>
			<div class="modal-body">
				<div id="messagebox_1"></div>
				<table class="tbl-layout">
					<tr>
						<td>New Password:</td>
						<td><input type="text" id="new_password" class="form-control"></td>
					</tr>
					<tr>
						<td>Confirm Password:</td>
						<td><input type="text" id="confirm_password" class="form-control"></td>
					</tr>
				</table>
			</div>
			<div class="modal-footer">
				<button id="update_password" type="button" class="btn btn-primary">Update password</button>
			</div>
		</div>
	</div>
</div>