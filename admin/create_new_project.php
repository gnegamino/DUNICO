<?php
	session_start(); 
	require_once("header.php"); 
	require_once("check_session.php");
	
	$user_id = $_SESSION['user_id'];
	$full_name = $_SESSION['full_name'];
?>
<?php require_once('templates/admin_header.php'); ?>
	<div class="container">
		<?php require_once('templates/admin_sidebar_logo.php'); ?>
		<div class="row">
			<div class="col-md-3">
				<?php require_once('templates/admin_sidebar_menu.php'); ?>
			</div>
			<div class="col-md-9">
				<div class="a-maincontent clearfix">
					<div class="heading-title">
						Create New Project
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
								<td>
									<select id="category_list" class="form-control"></select>
								</td>
								<td>
									<input id="category_manager" type="button" class="btn btn-info" value="Category Manager">
								</td>
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
						<input type="submit" id="save_project" class="btn btn-success" value="Save changes">
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="helpers/error_helper.js"></script>
</html>

<!-- Modal -->
<div class="modal fade" id="categoryManager" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Category Manager</h4>
			</div>
			<div class="modal-body clearfix">
				<div id="messagebox"></div>
				<div class="content-split" align="center">
					<table class="tbl-layout">
						<td>Category name:</td>
						<td><input id="category_str" type="text" class="form-control"></td>
						<td><input id="create_new_category" type="button" class="btn btn-primary" value="Create new category"></td>
					</table>
				</div>
				
				<div class="content-split">
					<div id="tbl" class="tbl-design inverse">
						<table></table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Modal -->
<div class="modal" id="deleteCategory" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Confirm Delete Category</h4>
			</div>
			<div class="modal-body clearfix">
				<input id="category_tobedeleted" type="hidden" value="">
				<span class="i-red dark">NOTE: All images and projects associated with this category will be permanently deleted in the system. If you really want to delete this category, enter your password below for confirmation.</span>
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
				<input id="btn_password" type="button" class="btn btn-warning" value="Delete category">
				<button class="btn btn-danger" data-dismiss="modal" aria-label="Close">Cancel</button>
			</div>
		</div>
	</div>
</div>