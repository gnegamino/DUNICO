<?php
	require_once("../connect.php");

	$post_data 	= array();
	$fnc 		= '';

	$post_data 	= json_decode($_POST['data'], true);
	extract($post_data);

	$response['error'] = '';
	
	switch ($fnc) {
		case 'select_data':
			$sql = "SELECT 
					    project_id,
					    project_name,
					    project_description,
					    category_name,
					    year_established
					FROM
						db_dunico.projects AS P
					JOIN
						db_dunico.projects_category AS PC
					ON 
						P.category_id = PC.category_id";

		 	$result = mysqli_query($conn, $sql);
		 	$i = 0;

			while ($row = mysqli_fetch_assoc($result)) 
			{
				$dataSet[$i] = array(
									'project_id' => $row['project_id'],
									'project_name' => $row['project_name'],
									'project_description' => $row['project_description'],
									'category_name' => $row['category_name'],
									'year_established' => $row['year_established']
								);
				$i++;
			};

			$response['data'] = $dataSet;

			$sql = "SELECT 
						* 
					FROM 
						db_dunico.project_images AS PI 
					WHERE PI.project_id = 1;";

		 	$result = mysqli_query($conn, $sql);
		 	$i = 0;

			while ($row = mysqli_fetch_assoc($result)) 
			{
				$dataSet[$i] = array(
									'project_id' => $row['project_id'],
									'project_name' => $row['project_name'],
									'project_description' => $row['project_description'],
									'category_name' => $row['category_name'],
									'year_established' => $row['year_established'],
									'is_active' => ($row['is_active'] == 1) ? "Active" : "Inactive"
								);
				$i++;
			};

			$response['projects'] = $dataSet;

			break; 
		default:
			$response['error'] = 'Invalid arguments!';
			break;
	}

	echo json_encode($response);
	
?>