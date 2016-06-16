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
		case 'save_home':
			$motto_caption = mysqli_real_escape_string($conn, $motto_caption);
			$motto_content = mysqli_real_escape_string($conn, $motto_content);
			$sql = "UPDATE
						`page_home` 
					SET 
						`motto_caption`='$motto_caption', 
						`motto_content`='$motto_content' 
					WHERE `content_id`='1';";

			$result = mysqli_query($conn, $sql);
			break;


		case 'load_services':
			$sql = "SELECT our_services FROM `page_services` LIMIT 1";

			$result = mysqli_query($conn, $sql);
 			$row = mysqli_fetch_assoc($result);

			$response['services'] = [ 
				'our_services' => $row['our_services'] 
			];
			
			break;
		case 'save_services':
			$our_services = mysqli_real_escape_string($conn, $our_services);
			$sql = "UPDATE
						`page_services` 
					SET 
						`our_services`='$our_services'
					WHERE `content_id`='1';";

			$result = mysqli_query($conn, $sql);
			break;

		default:
			$response['error'] = 'Invalid arguments!';
			break;
	}

	echo json_encode($response);
?>