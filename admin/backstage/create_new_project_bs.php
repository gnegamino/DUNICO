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
							(`user_id`, `project_name`, `project_description`, `is_active`, `is_show`, `category_id`, `year_established`, `date_created`, `date_modified`) 
						VALUES 
							('$user_id', '$project_name', '$project_description', '1', '1', '$category_id', '$year_established', now(), now());";

			mysqli_query($conn, $sql);

			$sql = "SELECT MAX(project_id) AS project_id FROM `projects`";
			$result = mysqli_query($conn, $sql);
			$row = mysqli_fetch_assoc($result);

			$latest_project_id =  $row["project_id"];
			// PROJECT IMAGES
			foreach ($arr_uploadimages as $key => $value) {
				echo $sql = "INSERT INTO 
							`project_images` 
							(`project_id`, `filename`) 
						VALUES 
							('$latest_project_id', '$value')";

		 		mysqli_query($conn, $sql);
			}
			break;

		case 'remove_image':
			unlink('../'. $image);
			break;

		default:
			$response['error'] = 'Invalid arguments!';
			break;
	}

	echo json_encode($response);
	
?>