<?php
	session_start();
	$user_id =  $_SESSION['user_id'];
	$project_id = $_SESSION['project_id'];
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

		case 'select_data':

			$sql = "SELECT 
					    project_name,
					    project_description,
					    category_id,
					    year_established
					FROM
					    `projects` AS PI
					WHERE
						user_id = $user_id
					AND 
						project_id = $project_id";

		 	$result = mysqli_query($conn, $sql);
		 	$row = mysqli_fetch_assoc($result);

			$dataSet = array(
								'project_name' => $row['project_name'],
								'project_description' => $row['project_description'],
								'category_id' => $row['category_id'],
								'year_established' => $row['year_established']
							);

			$response['data'] = $dataSet;
			break;

		case 'image_preview':

			$sql = "SELECT 
						filename 
					FROM 
						db_dunico.project_images 
					WHERE 
						project_id = $project_id";

		 	$result = mysqli_query($conn, $sql);
			$i = 0;

			while ($row = mysqli_fetch_assoc($result)) 
			{
				$dataSet[$i] = array('filename' => $row['filename']);
				$i++;
			};

			if(isset($dataSet))
				$response['data'] = $dataSet;
			else
				$response['error'] = 'No images found!';
			
			break;

		case 'update_project':
			$project_name = mysqli_real_escape_string($conn, $project_name);
			$project_description = mysqli_real_escape_string($conn, $project_description);
			$category_id = mysqli_real_escape_string($conn, $category_id);
			$year_established = mysqli_real_escape_string($conn, $year_established);

			echo $sql = "UPDATE 
						`projects` 
					SET 
						`project_name`='$project_name', 
						`project_description`='$project_description', 
						`category_id`='$category_id',
						`year_established`='$year_established', 
						`date_modified`= now()
					WHERE 
						`project_id`='$project_id'";

			mysqli_query($conn, $sql);

			foreach ($arr_removeimages as $key => $value) {
				$value = mysqli_real_escape_string($conn, $value);

				$sql = "DELETE FROM `project_images` 
						WHERE `project_id`='$project_id'
						AND `filename`='$value'";
				
		 		mysqli_query($conn, $sql);

				unlink('../../arch/'. $value);
			}

			foreach ($arr_uploadimages as $key => $value) {
				$value = mysqli_real_escape_string($conn, $value);

				$sql = "INSERT INTO 
							`db_dunico`.`project_images` 
							(`project_id`, `filename`) 
						VALUES 
							($project_id, '$value')";

		 		mysqli_query($conn, $sql);
			}
			break;

		default:
			$response['error'] = 'Invalid arguments!';
			break;
	}

	echo json_encode($response);
	
?>