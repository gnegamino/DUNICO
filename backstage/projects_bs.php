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
						no_of_pictures,
						category_name,
						year_established,
						is_active
					FROM
						db_dunico.projects
					JOIN
						db_dunico.projects_category 
					ON 
						db_dunico.projects.category_id = db_dunico.projects_category.category_id
					WHERE
						is_show = 1";

		 	$result = mysqli_query($conn, $sql);
		 	$i = 0;

			while ($row = mysqli_fetch_assoc($result)) 
			{
				$dataSet[$i] = array(
									'project_id' => $row['project_id'],
									'project_name' => $row['project_name'],
									'project_description' => $row['project_description'],
									'no_of_pictures' => $row['no_of_pictures'],
									'category_name' => $row['category_name'],
									'year_established' => $row['year_established'],
									'is_active' => ($row['is_active'] == 1) ? "Active" : "Inactive"
								);
				$i++;
			};

			$response['data'] = $dataSet;

			break; 
		default:
			$response['error'] = 'Invalid arguments!';
			break;
	}

	echo json_encode($response);
	
?>