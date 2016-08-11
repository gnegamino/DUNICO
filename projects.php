<?php include("header.php"); ?>
<body>
	<div class="black-bg"></div>
	<div class="seamless">
		<?php include("navigation.php"); ?>
	  	<div id="projects" class="container push-down-header">
	  		<div class="row">
	  			<div class="col-md-12">
	  				<h2 class="pull-left">OUR PROJECTS</h2>
	  				<ol class="pull-right breadcrumb">
	  					<li id="by_theme" class="active"><a href="#">BY THEME</a></li>
	  					<li id="by_year"><a href="#">BY YEAR</a></li>
	  				</ol>
	  			</div>
	  		</div>
			<div class="row">
				<div class="pull-left">
					<div class="p-sidebar">
						<ul id="project_category"></ul>
					</div>
				</div>
				<div class="pull-right">
					<div id="project_gallery" class="p-container clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	</body>
</html>