<?php
	session_start(); 
	require_once("header.php"); 
	require_once("check_session.php");
	if(!isset($_GET['project_id']))
		header("Location: login.php");
	
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
		<?php require_once('templates/admin_sidebar_logo.php'); ?>
		<div class="row">
			<div class="col-md-3">
				<?php require_once('templates/admin_sidebar_menu.php'); ?>
			</div>
			<div class="col-md-9">
				<div class="a-maincontent clearfix">
					<div class="heading-title">
						Edit Project
					</div>
					<div class="content-split" align="center">
						<div id="messagebox"></div>
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
								<td><select id="category_list" class="form-control"></select></td>
							</tr>
							<tr>
								<td>Year established:</td>
								<td>
									<select id="year_established" class="form-control">
										<?php 
											for ($i = date(Y); $i > 1970; $i--) { 
												echo "<option value='$i'>".$i."</option>";
											}
										?>
									</select>
								</td>
							</tr>
						</table>
					</div>
					<div class="content-split">
						<div class="heading-title pull-left">
							Images Preview
						</div>
					</div>
					<div id="messagebox_1" class="content-split"></div>
					<div class="content-split clearfix">
						<div id="preview"></div>
					</div>
					<div class="content-split clearfix">
						<div class="heading-title pull-left">
							Images to be uploaded
						</div>
						<div class="pull-right">
							<form id="upload-images" action="backstage/upload_bs.php" method="post" enctype="multipart/form-data">
								<table class="tbl-layout">
									<tr>
										<td>Upload images:</td>
										<td><input type="file" id="temp-images" name="project_images[]" multiple></td>
									</tr>
								</table>
							</form>
						</div>
						<div id="to_be_uploaded"></div>
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
