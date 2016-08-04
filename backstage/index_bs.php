<?php
	require_once("../connect.php");

	$post_data 	= array();
	$fnc 		= '';

	$post_data 	= json_decode($_POST['data'], true);
	extract($post_data);

	$response['error'] = '';
	
	switch ($fnc) {
		case 'load_home':
			$sql = "SELECT motto_caption, motto_content FROM `page_home` LIMIT 1";

			$result = mysqli_query($conn, $sql);
 			$row = mysqli_fetch_assoc($result);

			$response['home'] = [
				'motto_content' => $row['motto_content'],
				'motto_caption' => $row['motto_caption']
			];
			break;
		default:
			$response['error'] = 'Invalid arguments!';
			break;
	}

	echo json_encode($response);
?>