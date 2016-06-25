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
					<div class="heading-title">
						Featured Projects
					</div>
					<div class="featured">
						<div id="tbl">

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="helpers/error_helper.js"></script>
</html>