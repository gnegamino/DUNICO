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
				<div class="a-maincontent">
					<div class="heading-title clearfix">
						Page Manager
					</div>
					<div class="content-split">
						<div class="row">
							<div class="a-secondary-title clearfix">
								<div class="pull-left">
									Home Page
								</div>
								<div class="pull-right">
									<input type="button" class="btn btn-success edit home" value="Edit">
									<input type="button" class="btn btn-danger cancel" value="Cancel" disabled>
								</div>
							</div>
						</div>
						<div class="content-split">
							<div class="row">
								<div class="col-xs-12">
									<table class="tbl-layout">
										<tr>
											<td width="200px">Motto Panel Caption:</td>
											<td width="610px"><input type="text" id="motto_caption" class="form-control" disabled></td>
										</tr>
										<tr>
											<td valign="top">Motto Panel Content:</td>
											<td><textarea id="motto_content" class="form-control" rows="3"></textarea></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="content-split">
						<div class="row">
							<div class="a-secondary-title clearfix">
								<div class="pull-left">
									Services Page
								</div>
								<div class="pull-right">
									<input type="button" class="btn btn-success edit services" value="Edit">
									<input type="button" class="btn btn-danger cancel" value="Cancel" disabled>
								</div>
							</div>
						</div>
						<div class="content-split">
							<div class="row">
								<div class="col-xs-12">
									<table class="tbl-layout">
										<tr>
											<td width="200px" valign="top">Our Services (Content):</td>
											<td width="610px"><textarea id="our_services" class="form-control" disabled rows="3"></textarea></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="content-split">
						<div class="row">
							<div class="a-secondary-title clearfix">
								<div class="pull-left">
									About Page
								</div>
								<div class="pull-right">
									<input type="button" class="btn btn-success edit about" value="Edit">
									<input type="button" class="btn btn-danger cancel" value="Cancel" disabled>
								</div>
							</div>
						</div>
						<div class="content-split">
							<div class="row">
								<div class="col-xs-12">
									<table class="tbl-layout">
										<tr>
											<td width="200px">Company Name:</td>
											<td width="610px"><input type="text" id="company_name" class="form-control" disabled></td>
										</tr>
										<tr>
											<td>Founder:</td>
											<td><input type="text" id="founder_name" class="form-control" disabled></td>
										</tr>
										<tr>
											<td valign="top">Our Profile (Content):</td>
											<td><textarea id="our_profile" class="form-control" disabled rows="3"></textarea></td>
										</tr>
										<tr>
											<td valign="top">Our Founder (Content):</td>
											<td><textarea id="our_founder" class="form-control" disabled rows="3"></textarea></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="content-split">
						<div class="row">
							<div class="a-secondary-title clearfix">
								<div class="pull-left">
									Contact Information Page
								</div>
								<div class="pull-right">
									<input type="button" class="btn btn-success edit contact" value="Edit">
									<input type="button" class="btn btn-danger cancel" value="Cancel" disabled>
								</div>
							</div>
						</div>
						<div class="content-split">
							<div class="row">
								<div class="col-xs-12">
									<table class="tbl-layout">
										<tr>
											<td width="200px">Contact Name:</td>
											<td width="610px"><input type="text" id="contact_name" class="form-control" disabled></td>
										</tr>
										<tr>
											<td>Contact No.:</td>
											<td><input type="text" id="contact_no" class="form-control" disabled></td>
										</tr>
										<tr>
											<td>E-mail Address:</td>
											<td><input type="text" id="email" class="form-control" disabled></td>
										</tr>
										<tr>
											<td>Website URL:</td>
											<td><input type="text" id="website" class="form-control" disabled></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!-- <div class="content-split">
						<div class="row">
							<div class="a-secondary-title clearfix">
								<div class="pull-left">
									Featured Project Images
								</div>
								<div class="pull-right">
									<input type="button" class="btn btn-success" value="Set Featured Images" data-toggle="modal" data-target="#featuredImagesModal">
								</div>
							</div>
						</div>
						<div class="row">
							<div id="featured_images">
								<div class="a-project-image">
									<img src="../arch/1.jpg">
								</div>
							</div>
						</div>
					</div> -->
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="helpers/error_helper.js"></script>
</html>

<!-- Modal -->
<div class="modal fade" id="featuredImagesModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Set Featured Images</h4>
			</div>
			<div class="modal-body clearfix" align="center">
				<div id="all_project_images"></div>
			</div>
			<div class="modal-footer">
				<button id="save_featured" type="button" class="btn btn-success">Save changes</button>
			</div>
		</div>
	</div>
</div>