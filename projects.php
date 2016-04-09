<?php include("header.php"); ?>
<body>
	<div class="black-bg"></div>
	<div class="seamless">
		<?php include("navigation.php"); ?>
	  	<div id="projects" class="container push-down">
	  		<div class="row">
	  			<div class="col-md-12">
	  				<h2 class="pull-left">OUR PROJECTS</h2>
	  				<ol class="pull-right breadcrumb">
	  					<li class="active"><a href="#">BY THEME</a></li>
	  					<li><a href="#">BY YEAR</a></li>
	  				</ol>
	  			</div>
	  		</div>
			<div class="row">
				<div class="pull-left">
					<div class="p-sidebar">
						<ul>
							<li class="active"><a href="#">HOSPITALITY & RESIDENTIAL</a></li>
							<li><a href="#">CORPORATE</a></li>
							<li><a href="#">ARCHITECTURAL</a></li>
						</ul>
					</div>
				</div>
				<div class="pull-right">
					<div class="p-container clearfix">
						<?php for ($i=0; $i < 3; $i++) { ?>
						<a href="#">
							<div class="p-image">
								<img src="arch/1.jpg">
								<div class="p-caption">Corporate Example Example</div>
							</div>
						</a>
						<a href="#">
							<div class="p-image">
								<img src="arch/2.jpg">
								<div class="p-caption">Corporate Example Example</div>
							</div>
						</a>
						<a href="#">
							<div class="p-image">
								<img src="arch/3.jpg">
								<div class="p-caption">Corporate Example Example</div>
							</div>
						</a>
						<a href="#">
							<div class="p-image">
								<img src="arch/4.jpg">
								<div class="p-caption">Corporate Example Example</div>
							</div>
						</a>
						<a href="#">
							<div class="p-image">
								<img src="arch/5.jpg">
								<div class="p-caption">Corporate Example Example</div>
							</div>
						</a>
						<a href="#">
							<div class="p-image">
								<img src="arch/6.jpg">
								<div class="p-caption">Corporate Example Example</div>
							</div>
						</a>
						<a href="#">
							<div class="p-image">
								<img src="arch/7.jpg">
								<div class="p-caption">Corporate Example Example</div>
							</div>
						</a>
						<a href="#">
							<div class="p-image">
								<img src="arch/8.jpg">
								<div class="p-caption">Corporate Example Example</div>
							</div>
						</a>
						<?php } ?>
					</div>
				</div>
			</div>
		</div>
	</div>
	</body>
</html>