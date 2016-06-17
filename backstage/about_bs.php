<?php
	require_once("../connect.php");

	$post_data 	= array();
	$fnc 		= '';

	$post_data 	= json_decode($_POST['data'], true);
	extract($post_data);

	$response['error'] = '';
	
	switch ($fnc) {
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
		default:
			$response['error'] = 'Invalid arguments!';
			break;
	}

	echo json_encode($response);
?>