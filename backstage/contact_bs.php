<?php
	require_once("../connect.php");

	$post_data 	= array();
	$fnc 		= '';

	$post_data 	= json_decode($_POST['data'], true);
	extract($post_data);

	$response['error'] = '';
	
	switch ($fnc) {
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
		default:
			$response['error'] = 'Invalid arguments!';
			break;
	}

	echo json_encode($response);
?>