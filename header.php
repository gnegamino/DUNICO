<?php 
	$page_script = str_replace(".php", ".js", substr($_SERVER['PHP_SELF'], 1)); 
?>
<!DOCTYPE html>
<html>
	<head>
		<title>D`UNICO</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="scripts/<?= $page_script; ?>"></script>
	</head>