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