<?php
	session_start(); 
	require_once("header.php"); 
	require_once("check_session.php");
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
	<div class="container wide">
		<?php require_once('templates/admin_sidebar_logo.php'); ?>
		<div class="row">
			<div class="col-md-3">
				<?php require_once('templates/admin_sidebar_menu.php'); ?>
			</div>
			<div class="col-md-9">
				<div class="a-maincontent">
					<div class="heading-title">
						Project Manager
					</div>
					<div class="content-split">
						Sort by: 
						<select id="sort" class="form-control inline">
							<option value="name">By project name</option>
							<option value="category">By category</option>
							<option value="year">By year established</option>
						</select>					
					</div>
					<div class="content-split clearfix">
						<input type="submit" class="btn btn-primary" id="create_new_project" value="Create New Project">
						<input type="submit" class="btn btn-info" id="activate_selected" value="Activate Selected">
						<input type="submit" class="btn btn-warning" id="deactivate_selected" value="Deactivate Selected">
						<input type="submit" class="btn btn-danger" id="delete_selected" value="Delete Selected">
						<input type="submit" class="btn btn-default" id="show_archive" value="View Archived Projects">
					</div>
					<div class="content-split">
						<input id="sort_status" type="hidden" value="undeleted">
						<div id="tbl" class="tbl-design">
							<table></table>
						</div>
					</div>
					<div class="content-split">
						<div id="messagebox_2"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="helpers/error_helper.js"></script>
</html>
