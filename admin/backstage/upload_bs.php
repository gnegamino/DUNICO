<?php
	$target_dir = "../../arch/";
	$response['error'] = '';
	$dataSet = array();
	$i = 0;

	foreach ($_FILES["project_images"]["name"] as $key => $value) {

		$target_file = $target_dir . basename($_FILES["project_images"]["name"][$key]);
		$imageFileType = pathinfo($target_file, PATHINFO_EXTENSION);

	    $check = getimagesize($_FILES["project_images"]["tmp_name"][$key]);

	    if($check !== false) {
			if($imageFileType != "jpg" && $imageFileType != "JPG" && $imageFileType != "jpeg"
			&& $imageFileType != "png" && $imageFileType != "PNG" && $imageFileType != "GIF"
			&& $imageFileType != "gif" && $imageFileType != "bmp" && $imageFileType != "BMP") {
			    $response['error'] = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
			}else{
				if (file_exists($target_file)) {
				    $response['error'] = "Sorry, file already exists.";
				}else{
				    if (move_uploaded_file($_FILES["project_images"]["tmp_name"][$key], $target_file)) {
				    	$dataSet[$key] = array('image_name' => basename($_FILES["project_images"]["name"][$i]));
				    } else {
				        $response['error'] = "Sorry, there was an error uploading your file.";
				    }
				}
			}
	    }else{
	        $response['error'] = "File is not an image.";
	    }

	    $i++;
	}

	$response['data'] = $dataSet;
	echo json_encode($response);

?>