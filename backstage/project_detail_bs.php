<?php
	require_once("../connect.php");
	$post_data 	= array();
	$fnc 		= '';

	$post_data 	= json_decode($_POST['data'], true);
	extract($post_data);

	$response['error'] = '';
	
	switch ($fnc) {
		case 'get_project_detail':

			$sql = "SELECT 
					    project_id,
					    project_name,
					    project_description,
					    year_established
					FROM
					    db_dunico.projects AS P
					WHERE
						project_id = $project_id";

		 	$result = mysqli_query($conn, $sql);
			$i = 0;

			while ($row = mysqli_fetch_assoc($result)) 
			{
				$dataSet[$i] = array(
									'project_id' => $row['project_id'],
									'project_name' => $row['project_name'],
									'project_description' => $row['project_description'],
									'year_established' => $row['year_established']
								);
				$i++;
			};

			$response['projects'] = $dataSet;
			break;

		case 'get_project_images':

			$sql = "SELECT 
						filename 
					FROM 	
						db_dunico.project_images AS PI
					WHERE 
						PI.project_id = $project_id
					";

		 	$result = mysqli_query($conn, $sql);
			$i = 0;

			while ($row = mysqli_fetch_assoc($result)) 
			{
				$dataSet[$i] = array(
									'filename' => $row['filename']
								);
				$i++;
			};

			$response['project_images'] = $dataSet;
			break;

		case 'get_next_project':

			$sql = "SELECT 
					    project_id,
					    project_name,
					    project_description,
					    year_established
					FROM
					    db_dunico.projects AS P
					WHERE
						project_id > $project_id
					LIMIT 1";

		 	$result = mysqli_query($conn, $sql);
			$i = 0;

			while ($row = mysqli_fetch_assoc($result)) 
			{
				$dataSet[$i] = array(
									'project_id' => $row['project_id'],
									'project_name' => $row['project_name'],
									'project_description' => $row['project_description'],
									'year_established' => $row['year_established']
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