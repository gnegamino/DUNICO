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


		case 'load_about':
			$sql = "SELECT * FROM `page_about` LIMIT 1";

			$result = mysqli_query($conn, $sql);
 			$row = mysqli_fetch_assoc($result);

			$response['about'] = [ 
				'company_name' => $row['company_name'],
				'founder_name' => $row['founder_name'],
				'our_profile' => $row['our_profile'],
				'our_founder' => $row['our_founder']
			];
			
			break;
		case 'save_about':
			$company_name = mysqli_real_escape_string($conn, $company_name);
			$founder_name = mysqli_real_escape_string($conn, $founder_name);
			$our_profile = mysqli_real_escape_string($conn, $our_profile);
			$our_founder = mysqli_real_escape_string($conn, $our_founder);

			$sql = "UPDATE
						`page_about` 
					SET 
						`company_name`='$company_name',
						`founder_name`='$founder_name',
						`our_profile` ='$our_profile',
						`our_founder` ='$our_founder'
					WHERE 
						`content_id`='1';";

			$result = mysqli_query($conn, $sql);
			break;

		default:
			$response['error'] = 'Invalid arguments!';
			break;
	}

	echo json_encode($response);
?>