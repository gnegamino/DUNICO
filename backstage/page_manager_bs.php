<?php
	require_once("../connect.php");

	$post_data 	= array();
	$fnc 		= '';

	$post_data 	= json_decode($_POST['data'], true);
	extract($post_data);

	$response['error'] = '';
	
	switch ($fnc) {
		case 'load_all_project_images':

			$sql = "SELECT 
						PI.`image_id`, P.`project_name`, P.`project_name`, PI.`filename`,
						P.`project_id`
					FROM `project_images` AS PI
					LEFT JOIN `projects` AS P
					ON PI.`project_id` = P.`project_id`";

			$result = mysqli_query($conn, $sql);
			$i = 0;

			$projects = [];

 			while($row = mysqli_fetch_assoc($result)){
 				$projects[$row['project_name']][] = [ 
 														'image_id' => $row['image_id'],
 														'filename' => $row['filename']
 													];
 			}

 			$response['project_images'] = $projects;

			break;

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

		case 'load_contact':
			$sql = "SELECT * FROM `page_contact` LIMIT 1";

			$result = mysqli_query($conn, $sql);
 			$row = mysqli_fetch_assoc($result);

			$response['contact'] = [ 
				'contact_name' => $row['contact_name'],
				'contact_no' => $row['contact_no'],
				'email' => $row['email'],
				'website' => $row['website']
			];
			
			break;
		case 'save_contact':
			$contact_name = mysqli_real_escape_string($conn, $contact_name);
			$contact_no = mysqli_real_escape_string($conn, $contact_no);
			$email = mysqli_real_escape_string($conn, $email);
			$website = mysqli_real_escape_string($conn, $website);

			$sql = "UPDATE
						`page_contact` 
					SET 
						`contact_name`='$contact_name',
						`contact_no`='$contact_no',
						`email` ='$email',
						`website` ='$website'
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