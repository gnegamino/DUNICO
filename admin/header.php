<?php
	$page_script  = str_replace("admin/", "scripts/", str_replace(".php", ".js", substr($_SERVER['PHP_SELF'], 1)));
	$current_page = str_replace("/admin/", "", $_SERVER['PHP_SELF']);
?>
<!DOCTYPE html>
<html>
<head>
	<title>D`Unico - Administrator</title>
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="summernote/summernote.css">
	<link rel="stylesheet" type="text/css" href="../css/font-awesome.min.css">
	<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="../js/jquery.form.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<?= $page_script; ?>"></script>
	<script type="text/javascript" src="summernote/summernote.min.js"></script>
</head>