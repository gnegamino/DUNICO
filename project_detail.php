<?php 
	include("header.php"); 
	$project_id = $_GET['project_id'];
?>	
	<input id="page_true" type="hidden" value="project_detail">
	<input id="project_id" type="hidden" value="<?php echo $project_id; ?>">
	<body class="hidden-overflow">
		<div class="black-bg"></div>
		<?php include("navigation.php"); ?>
		<div class="backdrop">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="featured-project"></div>
					</div>
				</div>
			</div>
		</div>
	  	<div id="project_detail" class="container-fluid">
			<div class="row">
			    <div id="featured" class="carousel slide carousel-fade" data-ride="carousel" data-interval="false">
					<ol class="carousel-indicators">
						<li data-target="#featured" data-slide-to="0" class="active"></li>
						<li data-target="#featured" data-slide-to="1"></li>
						<li data-target="#featured" data-slide-to="2"></li>
						<li data-target="#featured" data-slide-to="3"></li>
						<li data-target="#featured" data-slide-to="4"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="arch/16F RECEPTION.jpg">
							<div class="carousel-caption">
							</div>
						</div>
						<div class="item">
							<img src="arch/BOARD ROOM R1.jpg">
							<div class="carousel-caption">
							</div>
						</div>
						<div class="item">
							<img src="arch/EXECUTIVE BOARDROOM.jpg">
							<div class="carousel-caption">
							</div>
						</div>
						<div class="item">
							<img src="arch/front 1.jpg">
							<div class="carousel-caption">
							</div>
						</div>
						<div class="item">
							<img src="arch/LOUNGE AREA R1.jpg">
							<div class="carousel-caption">
							</div>
						</div>
					</div>
					<a class="carousel-control left" href="#featured" data-slide="prev"><img src="img/arrow-left.png"></a>
					<a class="carousel-control right" href="#featured" data-slide="next"><img src="img/arrow-right.png"></a>
				</div>
			</div>
		</div>
	</body>
</html>