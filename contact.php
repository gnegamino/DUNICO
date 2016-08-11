<?php include("header.php"); ?>
<body>
	<div class="black-bg"></div>
	<div class="seamless">
		<?php include("navigation.php"); ?>
	  	<div id="contact" class="container push-down-header">
			<div class="row">
				<div class="col-md-12">
					<h2>CONTACT INFORMATION</h2>
					<div id="contacts" class="pull-left"></div>
					<div class="pull-right">
						<div id="map">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</body>
</html>
<script type="text/javascript">
	function initMap() {
		var mapDiv = document.getElementById('map');
		var map = new google.maps.Map(mapDiv, {
			center: {lat: 14.659471, lng: 121.028030},
			zoom: 8
		});
	}
</script>
<script src="https://maps.googleapis.com/maps/api/js?callback=initMap" async defer></script>