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
						<table class="tbl-layout">
							<tr>
								<td>Search project name:</td>
								<td><input id="search_str" type="text" class="form-control"></td>
								<td>Sort by:</td>
								<td>
									<select id="sort_by" class="form-control inline">
										<option value="project_name">By project name</option>
										<option value="category_name">By category</option>
										<option value="year_established">By year established</option>
										<option value="status">By status</option>
										<option value="date_created">By date created</option>
										<option value="date_modified">By date modified</option>
									</select>	
								</td>
								<td><input id="sort_row" type="button" value="ASC" class="btn btn-info"></td>
								<td><input id="search" type="button" value="Search" class="btn btn-default"></td>
								<td id="messagebox" hidden></td>
							</tr>
						</table>	
					</div>
					<div class="content-split clearfix">
						<div class="pull-left">
							<input type="submit" class="btn btn-primary" id="create_new_project" value="Create New Project">
							<input type="submit" class="btn btn-info" id="activate_selected" value="Activate Selected">
							<input type="submit" class="btn btn-warning" id="deactivate_selected" value="Deactivate Selected">
							<input type="submit" class="btn btn-danger" id="delete_selected" value="Delete Selected">
						</div>
						<div class="pull-right">
							<input type="submit" class="btn btn-default" id="switch_projects" value="View Archived Projects">
							<input type="submit" class="btn btn-success" id="restore_selected" value="Restore Selected">
						</div>
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
