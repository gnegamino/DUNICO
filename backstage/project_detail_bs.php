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
					    P.`project_id`,
					    P.`project_name`,
					    P.`project_description`,
					    P.`year_established`
					FROM
					    projects AS P
					WHERE
						`project_id` = $project_id";

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

		case 'get_previous_project':
			$sql = "SELECT 
					    P.`project_id`
					FROM
					    projects AS P
					WHERE
						P.`project_id` < $project_id
					ORDER BY 
						P.`project_id` DESC
					LIMIT 1";

		 	$result = mysqli_query($conn, $sql);
			$i = 0;

			if(mysqli_num_rows($result) == 0){

				$sql = "SELECT 
							P.`project_id`
						FROM
							db_dunico.projects AS P
						ORDER BY 
							P.`project_id` DESC
						LIMIT 1";

			 	$result = mysqli_query($conn, $sql);
				$i = 0;

				while ($row = mysqli_fetch_assoc($result)) 
				{
					$dataSet[$i] = array(
										'project_id' => $row['project_id']
									);
					$i++;
				};

				$response['previous_project'] = $dataSet;

			}else{

				while ($row = mysqli_fetch_assoc($result)) 
				{
					$dataSet[$i] = array(
										'project_id' => $row['project_id']
									);
					$i++;
				};

				$response['previous_project'] = $dataSet;
			}
			while ($row = mysqli_fetch_assoc($result)) 
			{
				$dataSet[$i] = array(
									'project_id' => $row['project_id']
								);
				$i++;
			};

			$response['previous_project'] = $dataSet;
			break;

		case 'get_next_project':

			$sql = "SELECT 
					    P.`project_id`
					FROM
					    projects AS P
					WHERE
						P.`project_id` > $project_id
					ORDER BY 
						P.`project_id` ASC
					LIMIT 1";

		 	$result = mysqli_query($conn, $sql);
			$i = 0;

			if(mysqli_num_rows($result) == 0){

				$sql = "SELECT 
					    P.`project_id`
					FROM
					    projects AS P
					ORDER BY 
						P.`project_id` ASC
					LIMIT 1";

			 	$result = mysqli_query($conn, $sql);
				$i = 0;

				while ($row = mysqli_fetch_assoc($result)) 
				{
					$dataSet[$i] = array(
										'project_id' => $row['project_id']
									);
					$i++;
				};

				$response['next_project'] = $dataSet;

			}else{

				while ($row = mysqli_fetch_assoc($result)) 
				{
					$dataSet[$i] = array(
										'project_id' => $row['project_id']
									);
					$i++;
				};

				$response['next_project'] = $dataSet;
			}

			break;
		default:
			$response['error'] = 'Invalid arguments!';
			break;
	}

	echo json_encode($response);
	
?>