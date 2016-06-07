<?php
	require_once("../connect.php");

	$post_data 	= array();
	$fnc 		= '';

	$post_data 	= json_decode($_POST['data'], true);
	extract($post_data);

	$response['error'] = '';
	
	switch ($fnc) {
		case 'get_year':
			$sql = "SELECT DISTINCT P.`year_established` FROM projects AS P ORDER BY P.`year_established` DESC";

		 	$result = mysqli_query($conn, $sql);
		 	$i = 0;

			while ($row = mysqli_fetch_assoc($result)) 
			{
				$dataSet[$i] = array(
										'year_established' => $row['year_established']
									);
				$i++;
			};

			$response['year_established'] = $dataSet;
			break;

		case 'get_category':

			$sql = "SELECT PC.`category_id`, PC.`category_name` FROM projects_category AS PC";

		 	$result = mysqli_query($conn, $sql);
		 	$i = 0;

			while ($row = mysqli_fetch_assoc($result)) 
			{
				$dataSet[$i] = array(
										'category_id' => $row['category_id'],
										'category_name' => $row['category_name']
									);
				$i++;
			};

			$response['category'] = $dataSet;
			break;

		case 'get_projects':
			$where_clause = ($category_id == null) ? "WHERE P.`year_established` = $year_established" : "WHERE P.`category_id` = $category_id";

			$sql = "SELECT
				P.`project_id`,
			    P.`project_name`,
			    PI.`filename`
			FROM
				projects AS P
			LEFT JOIN
				project_images AS PI ON PI.`project_id` = P.`project_id`
			LEFT JOIN
				projects_category AS PC ON PC.`category_id` = P.`category_id` ".$where_clause."
			GROUP BY P.`project_id`"; 

			$result = mysqli_query($conn, $sql);
		 	$i = 0;

			while ($row = mysqli_fetch_assoc($result)) 
			{
				$dataSet[$i] = array(
										'project_id' => $row['project_id'],
										'project_name' => $row['project_name'],
										'filename' => $row['filename'],
									);
				$i++;
			};

			$response['projects'] = $dataSet;
			break;
		// case 'get_category':
		// 	$sql = "SELECT category_id, category_name FROM db_dunico.projects_category";

		//  	$result = mysqli_query($conn, $sql);
		//  	$i = 0;

		// 	while ($row = mysqli_fetch_assoc($result)) 
		// 	{
		// 		$dataSet[$i] = array(
		// 								'category_id' => $row['category_id'],
		// 								'category_name' => $row['category_name']
		// 							);
		// 		$i++;
		// 	};

		// 	$response['category'] = $dataSet;
		// 	break; 

		

		// case 'get_projects':
		// 	$sql = "SELECT 
		// 			    project_id,
		// 			    project_name,
		// 			    project_description,
		// 			    year_established
		// 			FROM
		// 			    db_dunico.projects AS P
		// 			WHERE
		// 				category_id = $category_id";

		//  	$result = mysqli_query($conn, $sql);
		// 	$i = 0;

		// 	while ($row = mysqli_fetch_assoc($result)) 
		// 	{
		// 		$dataSet[$i] = array(
		// 							'project_id' => $row['project_id'],
		// 							'project_name' => $row['project_name'],
		// 							'project_description' => $row['project_description'],
		// 							'year_established' => $row['year_established']
		// 						);
		// 		$i++;
		// 	};

		// 	// Get Project Images
		// 	$response['projects'] = $dataSet;

		// 	$sql = "SELECT 
		// 				filename 
		// 			FROM 	
		// 				db_dunico.projects AS P
		// 			LEFT JOIN 
		// 				db_dunico.project_images AS PI
		// 			ON 
		// 				P.project_id = PI.project_id 
		// 			WHERE 
		// 				P.category_id = $category_id
		// 			LIMIT 1";

		//  	$result = mysqli_query($conn, $sql);
		// 	$i = 0;

		// 	while ($row = mysqli_fetch_assoc($result)) 
		// 	{
		// 		$dataSet[$i] = array(
		// 							'filename' => $row['filename']
		// 						);
		// 		$i++;
		// 	};

		// 	$response['project_images'] = $dataSet;
		// 	break;
		default:
			$response['error'] = 'Invalid arguments!';
			break;
	}

	echo json_encode($response);
	
?>