<?php include("header.php"); ?>
<body>
	<div class="black-bg"></div>
	<div class="seamless">
		<?php include("navigation.php"); ?>
	  	<div id="contact" class="container push-down">
			<div class="row">
				<div class="col-md-12">
					<h2>CONTACT INFORMATION</h2>
					<div class="pull-left">
						<div class="each-contact">
							<h3>FRANCIS AROLLADO</h3>
							<p>
								<table cellpadding="3">
									<tr>
										<td align="center"><i class="fa fa-envelope-o"></i></td>
										<td>francis.arrolado@yahoo.com</td>
									</tr>
									<tr>
										<td align="center"><i class="fa fa-mobile-phone"></i></td>
										<td>(+63) 928 728 7782</td>
									</tr>
									<tr>
										<td align="center"><i class="fa fa-globe"></i></td>
										<td>www.dunico.com.ph</td>
									</tr>
								</table>
							</p>
						</div>
						<div class="each-contact">
							<h3>FRANCIS AROLLADO</h3>
							<p>
								<table cellpadding="3">
									<tr>
										<td align="center"><i class="fa fa-envelope-o"></i></td>
										<td>francis.arrolado@yahoo.com</td>
									</tr>
									<tr>
										<td align="center"><i class="fa fa-mobile-phone"></i></td>
										<td>(+63) 928 728 7782</td>
									</tr>
									<tr>
										<td align="center"><i class="fa fa-globe"></i></td>
										<td>www.dunico.com.ph</td>
									</tr>
								</table>
							</p>
						</div>
						<div class="each-contact">
							<h3>FRANCIS AROLLADO</h3>
							<p>
								<table cellpadding="3">
									<tr>
										<td align="center"><i class="fa fa-envelope-o"></i></td>
										<td>francis.arrolado@yahoo.com</td>
									</tr>
									<tr>
										<td align="center"><i class="fa fa-mobile-phone"></i></td>
										<td>(+63) 928 728 7782</td>
									</tr>
									<tr>
										<td align="center"><i class="fa fa-globe"></i></td>
										<td>www.dunico.com.ph</td>
									</tr>
								</table>
							</p>
						</div>
					</div>
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