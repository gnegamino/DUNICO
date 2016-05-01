<?php
	require_once("header.php"); 
	session_start(); 
	$user_id = $_SESSION['user_id'];
	$full_name = $_SESSION['full_name'];
	$_SESSION['project_id'] = $_GET['project_id'];
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
				<div class="a-maincontent clearfix">
					<div class="heading-title">
						Edit Project
					</div>
					<div class="content-split clearfix">
						<table class="tbl-layout">
							<tr>
								<td>Project name:</td>
								<td width="500px"><input id="project_name" type="text" class="form-control"></td>
							</tr>
							<tr>
								<td valign="top">Project description:</td>
								<td><textarea id="project_description" class="form-control" rows="4"></textarea></td>
							</tr>
							<tr>
								<td>Category:</td>
								<td><input id="category_name" type="text" class="form-control"></td>
							</tr>
							<tr>
								<td>Year established:</td>
								<td><input id="year_established" type="text" class="form-control"></td>
							</tr>
						</table>
					</div>
					<div class="content-split">
						<div class="heading-title">
							Images Preview
						</div>
					</div>
					<div id="messagebox_1" class="content-split"></div>
					<div class="content-split">
						<div id="preview"></div>
					</div>
					<div class="content-split pull-right">
						<input type="submit" id="update_project" class="btn btn-success" value="Update changes">
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="helpers/error_helper.js"></script>
</html>
