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
									<input type="button" id="Save" class="btn btn-default" value="Save">
								</div>
							</div>
						</div>
						<div class="content-split">
							<div class="row">
								<div class="col-xs-12">
									<table class="tbl-layout">
										<tr>
											<td width="200px">Motto Panel Caption:</td>
											<td width="610px"><input type="text" id="motto_caption" class="form-control"></td>
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
							<div class="a-secondary-title">
								Services Page
							</div>
						</div>
						<div class="content-split">
							<div class="row">
								<div class="col-xs-12">
									<table class="tbl-layout">
										<tr>
											<td width="200px" valign="top">Our Services (Content):</td>
											<td width="610px"><textarea id="our_services" class="form-control" rows="3"></textarea></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="content-split">
						<div class="row">
							<div class="a-secondary-title">
								About Page
							</div>
						</div>
						<div class="content-split">
							<div class="row">
								<div class="col-xs-12">
									<table class="tbl-layout">
										<tr>
											<td width="200px">Company Name:</td>
											<td width="610px"><input type="text" id="company_name" class="form-control"></td>
										</tr>
										<tr>
											<td>Founder:</td>
											<td><input type="text" id="founder_name" class="form-control"></td>
										</tr>
										<tr>
											<td valign="top">Our Profile (Content):</td>
											<td><textarea id="our_profile" class="form-control" rows="3"></textarea></td>
										</tr>
										<tr>
											<td valign="top">Our Founder (Content):</td>
											<td><textarea id="our_founder" class="form-control" rows="3"></textarea></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="content-split">
						<div class="row">
							<div class="a-secondary-title">
								Contact Information Page
							</div>
						</div>
						<div class="content-split">
							<div class="row">
								<div class="col-xs-12">
									<table class="tbl-layout">
										<tr>
											<td width="200px">Contact Name:</td>
											<td width="610px"><input type="text" id="contact_name" class="form-control"></td>
										</tr>
										<tr>
											<td>Contact No.:</td>
											<td><input type="text" id="contact_no" class="form-control"></td>
										</tr>
										<tr>
											<td>E-mail Address:</td>
											<td><input type="text" id="email_address" class="form-control"></td>
										</tr>
										<tr>
											<td>Website URL:</td>
											<td><input type="text" id="website" class="form-control"></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="helpers/error_helper.js"></script>
</html>