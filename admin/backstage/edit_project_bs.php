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

		case 'select_data':

			$sql = "SELECT 
					    project_name,
					    project_description,
					    category_name,
					    year_established
					FROM
					    db_dunico.projects
					JOIN
					    db_dunico.projects_category 
					ON 
						db_dunico.projects.category_id = db_dunico.projects_category.category_id
					WHERE
						user_id = $user_id
					AND 
						project_id = $project_id";

		 	$result = mysqli_query($conn, $sql);
		 	$row = mysqli_fetch_assoc($result);

			$dataSet = array(
								'project_name' => $row['project_name'],
								'project_description' => $row['project_description'],
								'category_name' => $row['category_name'],
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

		default:
			$response['error'] = 'Invalid arguments!';
			break;
	}

	echo json_encode($response);
	
?>