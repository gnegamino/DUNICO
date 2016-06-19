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
		case 'get_category_list':
			$sql = "SELECT * FROM `projects_category`";
			$result = mysqli_query($conn, $sql);
		 	$i = 0;

			while($row = mysqli_fetch_assoc($result)){
				$dataSet[$i] = [
					'category_id' => $row['category_id'],
					'category_name' => $row['category_name']
				];

				$i++;
			}

			$response['category'] = $dataSet;
			break;

		case 'save_project':
			$project_name = mysqli_real_escape_string($conn, $project_name);
			$project_description = mysqli_real_escape_string($conn, $project_description);
			$category_id = mysqli_real_escape_string($conn, $category_id);
			$year_established = mysqli_real_escape_string($conn, $year_established);
			
			$sql = "INSERT INTO
						`projects` 
						(`project_name`, `project_description`, `is_active`, `is_show`, `category_id`, `year_established`, `date_created`) 
					VALUES 
						('$project_name', '$project_description', '1', '1', '$category_id', '$year_established', now());";

			mysqli_query($conn, $sql);

			// PROJECT IMAGES
			// foreach ($arr_uploadimages as $key => $value) {
			// 	$sql = "INSERT INTO 
			// 				`db_dunico`.`project_images` 
			// 				(`project_id`, `filename`) 
			// 			VALUES 
			// 				($project_id, '$value')";

		 // 		mysqli_query($conn, $sql);

		 // 		echo $value;
			// }
			break;

		default:
			$response['error'] = 'Invalid arguments!';
			break;
	}

	echo json_encode($response);
	
?>