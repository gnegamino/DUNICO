<?php
	require_once("../../connect.php");

	$post_data 	= array();
	$fnc 		= '';

	$post_data 	= json_decode($_POST['data'], true);
	extract($post_data);

	$response['error'] = '';

	switch ($fnc) {
		case 'check_user':

			$sql = "SELECT 
	 				`user_id`, 
	 				`first_name`,
	 				`last_name`
	 			FROM
	 				users
	 			WHERE
	 				`user_name` = '".$user_name."'
	 			AND
	 				`pass_word` = '".$password."'
	 			";

	 		$result = mysqli_query($conn, $sql);

	 		if (mysqli_num_rows($result) > 0)
	 			$response = true;
	 		else
	 			$response['error'] = "Invalid credentials!";

			break;
		
		default:
			$response['error'] = "Invalid arguments!";
			break;
	}

	echo json_encode($response);

?>