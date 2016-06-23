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
		case 'select_data':
			if($search_str != ""){
				$search_str = mysqli_real_escape_string($conn, $search_str);
				$like_clause = " AND P.`project_name` LIKE '%". $search_str . "%' ";
			}else
				$like_clause = '';


			$is_show = ($switch_mode == 1) ? '1' : '0';

			$sql = "SELECT 
					    project_id,
					    project_name,
					    project_description,
					    category_name,
					    year_established,
					    is_active
					FROM
					    `projects` AS P
					JOIN
					    `projects_category` AS PC
					ON 
						P.`category_id` = PC.`category_id`
					WHERE
						P.`is_show` = $is_show
					AND
						P.`user_id` = $user_id $like_clause ORDER BY $sort $sort_row";

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

			if(isset($dataSet))
				$response['data'] = $dataSet;
			else
				$response['error'] = 'No data found!';
			break;


		case 'change_status':
			if($method == 'activate'){
				foreach ($arr_status as $value) {
					$sql = "UPDATE 
								`db_dunico`.`projects` 
							SET 
								`is_active`='1' 
							WHERE 
								`project_id`='$value' 
							AND
								user_id = $user_id";

					$result = mysqli_query($conn, $sql);
				}
			}else if($method == 'deactivate'){
				foreach ($arr_status as $value) {
					$sql = "UPDATE 
								`db_dunico`.`projects` 
							SET 
								`is_active`='0' 
							WHERE 
								`project_id`='$value' 
							AND
								user_id = $user_id";

					$result = mysqli_query($conn, $sql);
				}
			}else if($method == 'delete'){
				foreach ($arr_status as $value) {
					$sql = "UPDATE 
								`db_dunico`.`projects` 
							SET 
								`is_show`='0',
								`is_active`='0'  
							WHERE 
								`project_id`='$value' 
							AND
								user_id = $user_id";

					$result = mysqli_query($conn, $sql);
				}
			}else{
				foreach ($arr_status as $value) {
					$sql = "UPDATE 
								`db_dunico`.`projects` 
							SET 
								`is_show`='1',
								`is_active`='1'  
							WHERE 
								`project_id`='$value' 
							AND
								user_id = $user_id";

					$result = mysqli_query($conn, $sql);
				}
			}
			break; 
		default:
			$response['error'] = 'Invalid arguments!';
			break;
	}

	echo json_encode($response);
	
?>