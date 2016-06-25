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
		case 'check_user_password':
			$sql = "SELECT 
	 				`user_id`, 
	 				`first_name`,
	 				`last_name`
	 			FROM
	 				users
	 			WHERE
	 				`pass_word` = '$password_str'
	 			AND
	 				`user_id` = $user_id
	 			";

	 		$result = mysqli_query($conn, $sql);
 			$row = mysqli_fetch_assoc($result);

	 		if (mysqli_num_rows($result) > 0){
	 			// CHECK IF CATEGORY HAS BEEN PUBLISHED WITH PROJECT
	 			$sql = "SELECT P.`project_id` FROM `projects` AS P WHERE P.`category_id` = '$category_tobedeleted'";
				$result = mysqli_query($conn, $sql);
 				$row = mysqli_fetch_assoc($result);

 				if(mysqli_num_rows($result) > 0){
		 			// PROJECT IMAGES
		 			$sql = "SELECT PI.`filename` FROM `projects` AS P
							JOIN `project_images` AS PI
							ON P.`project_id` = PI.`project_id`
							WHERE P.`category_id` = $category_tobedeleted";

					$result = mysqli_query($conn, $sql);
					while($row = mysqli_fetch_assoc($result)){
						unlink('../../arch/'.$row['filename']);
					}

		 			// MAIN PROJECTS
		 			$sql = "SELECT DISTINCT PI.`project_id` FROM `projects` AS P
							JOIN `project_images` AS PI
							ON P.`project_id` = PI.`project_id`
							WHERE P.`category_id` = $category_tobedeleted";

					$result = mysqli_query($conn, $sql);
					while($row = mysqli_fetch_assoc($result)){
						$deleted_project_ids[] = $row['project_id'];
					}

					for ($i=0; $i < count($deleted_project_ids); $i++) { 
						$sql = "DELETE FROM `project_images` WHERE `project_id` = $deleted_project_ids[$i]";
						$result = mysqli_query($conn, $sql);
						$sql = "DELETE FROM `projects` WHERE `project_id` = $deleted_project_ids[$i]";
						$result = mysqli_query($conn, $sql);
					}
					
		 			$sql = "DELETE FROM `projects_category` WHERE `category_id`='$category_tobedeleted'";
					$result = mysqli_query($conn, $sql);

		 		}else{
		 			$sql = "DELETE FROM `projects_category` WHERE `category_id`='$category_tobedeleted'";
					$result = mysqli_query($conn, $sql);
		 		}
	 		}
	 		else
	 			$response['error'] = "Invalid credentials!";
			break;

		case 'update_category':
			$rename_input = mysqli_real_escape_string($conn, $rename_input);
			
			$sql = "UPDATE `projects_category` SET `category_name`='$rename_input' WHERE `category_id`='$rename_category_id'";
			mysqli_query($conn, $sql);
			break;

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

			if(isset($dataSet))
				$response['category'] = $dataSet;
			else
				$response['error'] = "Create a category first!";
			break;

		case 'add_category':
			$category_str = mysqli_real_escape_string($conn, $category_str);

			$sql = "SELECT * FROM `projects_category` WHERE `category_name` = '$category_str'";
			$result = mysqli_query($conn, $sql);

			if(mysqli_num_rows($result) > 0){
				$response['error'] = "Category name already exists!";
			}else{
				$sql = "INSERT INTO `projects_category` (`category_name`) VALUES ('$category_str');";
				mysqli_query($conn, $sql);
			}
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
				$sql = "INSERT INTO 
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