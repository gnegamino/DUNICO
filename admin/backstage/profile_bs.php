<?php
	session_start();
	$user_id =  $_SESSION['user_id'];
	require_once("../../connect.php");

	$post_data 	= array();
	$fnc 		= '';

	$post_data 	= json_decode($_POST['data'], true);
	extract($post_data);

	$response['error'] = '';
	
	switch ($fnc) {
		case 'select_data':

			$sql = "SELECT 
				*
 			FROM
 				`db_dunico`.`users`
 			WHERE
 				`user_id` = '".$user_id."'
 			LIMIT 1";

		 	$result = mysqli_query($conn, $sql);
			$row = mysqli_fetch_assoc($result);

			$dataSet = array(
								"user_name" => $row['user_name'],
								"first_name" => $row['first_name'],
								"last_name" => $row['last_name'],
								"address" => $row['address'],
								"contact_number" => $row['contact_number'],
								"email_address" => $row['email_address'],
								"website" => $row['website']
							);

			echo json_encode($dataSet);
			break;

		case 'update_password':
			if($new_password != $confirm_password)
			{
				$response['error'] = 'Passwords do not match!';
			}
			elseif(empty($new_password) || empty($confirm_password))
			{
				$response['error'] = 'Please complete the fields!';
			}
			else
			{
				$sql = "UPDATE 
					`db_dunico`.`users` 
				SET 
					`pass_word`= '$new_password' 
				WHERE 
					`user_id`= $user_id";

			 	$result = mysqli_query($conn, $sql);
			}

			echo json_encode($response);
			break;

		case 'update_profile':

			$sql = "UPDATE 
					`db_dunico`.`users`
				SET 
					`first_name` = '$first_name', 
					`last_name`= '$last_name', 
					`address`= '$address', 
					`contact_number`= $contact_number, 
					`email_address`= '$email_address', 
					`website`= '$website' 
				WHERE 
					`user_id`= $user_id";

		 	$result = mysqli_query($conn, $sql);
		 	
			echo json_encode($response);
			break;
		
		default:
			$response['error'] = 'Invalid arguments!';
			break;
	}
	
?>