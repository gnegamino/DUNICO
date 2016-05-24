var backstage = "../backstage/projects_bs.php";

$(function(){

	$("#projects .p-container .p-image", this).mouseover(function(){
		$(this).css("opacity", "1");
		$(".p-caption", this).show();
	}).mouseout(function(){
		$(this).css("opacity", "0.8");
		$(".p-caption", this).hide();
	}).stop();

	select_data();

});


function select_data() {

	var arr = {
		fnc : 'select_data'
	};

	$.ajax(backstage, {
		type: 'POST',
		dataType: 'JSON',
		data: 'data=' + JSON.stringify(arr),
		success: function(response) {

			var projectCategory = '',
				projectGallery = '';

			for(x in response.data)
			{
				projectCategory += '<li><a href=""#>' + response.data[x].category_name + '</a></li>'; // Project Category
				projectGallery += '<a href="project_detail.php"><div class="p-image">';
				projectGallery += '<img src=';
				projectGallery += '<div class="p-image">';
			}

			<a href="project_detail.php">
					<div class="p-image">
						<img src="arch/1.jpg">
						<div class="p-caption">Corporate Example Example</div>
					</div>
				</a>
			$('#project_category').html(projectCategory);


		}       
	});

}
