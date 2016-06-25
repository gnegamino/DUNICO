<script type="text/javascript">
	$(function(){
		$(".hide-menu", this).click(function(){
			var status = $(".hide-menu span").html();

			if (status == "HIDE MENU"){
				$(this).fadeOut(function(){
					$("#navigation").fadeOut(function(){
						$(".hide-menu span").html("SHOW MENU");
						$(".hide-menu").fadeIn();
					});
				});
			}else{
				$(this).fadeOut(function(){
					$("#navigation").fadeIn(function(){
						$(".hide-menu span").html("HIDE MENU");
						$(".hide-menu").fadeIn();
					});
				});
			}
		});
	});
</script>
<nav id="navigation" class="navbar navbar-inverse navbar-fixed-top clearfix">
  	<div class="container">
	    <div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.php">
				<div class="dunico-logo">
					<img src="img/unico-white.png">
					<div>un<span>i</span>co</div>
				</div>
			</a>
	    </div>
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="index.php">Home</a></li>
				<li><a href="projects.php">Projects</a></li>
				<li><a href="services.php">Services</a></li>
				<li><a href="about.php">About</a></li>
				<li><a href="contact.php">Contact</a></li>
			</ul>
	    </div>
	</div>
</nav>
<a href="index.php">
	<div class="hidden-logo">
		<img src="img/unico-white.png">
		<div>un<span class="i-red">i</span>co</div>
	</div>
</a>
<div class="hide-menu">
	<i class="fa fa-arrows"></i>&nbsp;&nbsp;<span>HIDE MENU</span>
</div>
