<?php
	session_start(); 
	require_once("header.php"); 
	require_once("check_session.php");
	$user_id = $_SESSION['user_id'];
	$full_name = $_SESSION['full_name'];
?>
<?php require_once('templates/admin_header.php'); ?>
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
						<!-- <div class="pull-right">
							<input type="submit" class="btn btn-default" id="switch_projects" value="View Archived Projects">
							<input type="submit" class="btn btn-success" id="restore_selected" value="Restore Selected">
						</div> -->
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

<!-- Modal -->
<div class="modal" id="deleteProjects" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Confirm Delete Projects</h4>
			</div>
			<div class="modal-body clearfix">
				<input id="projects_tobedeleted" type="hidden" value="">
				<span class="i-red dark">NOTE: All images and data associated with these projects will be permanently deleted in the system. If you really want to delete these projects, enter your password below for confirmation.</span>
				<div class="content-split" align="center">
					<table class="tbl-layout">
						<td>Enter your password:</td>
						<td><input id="password_str" type="password" class="form-control"></td>
					</table>
				</div>
				<div class="content-split" align="center">
					<div id="messagebox"></div>
				</div>
			</div>
			<div class="modal-footer">
				<input id="btn_password" type="button" class="btn btn-warning" value="Delete projects">
				<button class="btn btn-danger" data-dismiss="modal" aria-label="Close">Cancel</button>
			</div>
		</div>
	</div>
</div>