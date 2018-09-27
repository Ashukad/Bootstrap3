	<!DOCTYPE html>
	<%@ page import="java.sql.*" %>
	<%@ page import="java.io.*" %>
	<html lang="en">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<title>Zipment Couriers </title>
		<link rel="icon" type="image/gif/png" href="https://marketplace.canva.com/MACXINB2tZo/1/thumbnail_large/canva-courier-man-worker-with-checklist-avatar-MACXINB2tZo.png">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<!-- Bootstrap core CSS -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!-- Material Design Bootstrap -->
		<link href="css/mdb.min.css" rel="stylesheet">
		<!-- Your custom styles (optional) -->
		<link href="css/style.css" rel="stylesheet">
		<!-- Tooltip -->
		<script type="text/javascript" src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="/js/tipped/tipped.js"></script>
		<link rel="stylesheet" type="text/css" href="/css/tipped/tipped.css"/>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="https://maps.google.com/maps/api/js"></script>
		<script type="text/javascript" src="javascript.js"></script>

		<!-- Google Maps settings -->
		<script type="text/javascript">
			$(document).ready(function(){
				$('#showmap').click(function(){
					$(this).text($(this).text() == 'Show On Map' ? 'Hide Map' : 'Show On Map');
					$('#map-container').toggleClass("blureffect");
				});
			});
		</script>
		<script>
	  // Regular map
	  function regular_map() {
	  	var var_location = new google.maps.LatLng(19.0760, 72.8777);

	  	var var_mapoptions = {
	  		center: var_location,
	  		zoom: 14
	  	};

	  	var var_map = new google.maps.Map(document.getElementById("map-container"),
	  		var_mapoptions);

	  	var var_marker = new google.maps.Marker({
	  		position: var_location,
	  		map: var_map,
	  		title: "mumbai"
	  	});
	  }

	  // Initialize maps
	  google.maps.event.addDomListener(window, 'load', regular_map);
	</script> 
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCZUp9g5ajp3oRJAD83FA_02cMfL9LeoPg&callback=initMap">
		
	</script> 
	<script>
		function updateStatusFunction() {
			var table = document.getElementById("myTable");
			var row = table.insertRow(1);
			var cell1 = row.insertCell(0);
			var cell2 = row.insertCell(1);
			var cell3 = row.insertCell(2);
			var cell4 = row.insertCell(3);

			var currentlocation=document.getElementById("location").value;
			var currentDetails=document.getElementById("details").value;
			var currentDate=document.getElementById("theDate").value;
			var currentTime=document.getElementById("theTime").value;
			cell1.innerHTML =currentlocation;
			cell2.innerHTML = currentDetails;
			cell3.innerHTML = currentDate;
			cell4.innerHTML = currentTime;	
		}
	</script>                            
	<!-- Tooltip -->
</head>

<body onload="setDateTime()">
	<!-- Main Navigation-->
	<header>
		<!--Navbar-->
		<nav class="navbar navbar-expand-lg navbar-dark stylish-color-dark fixed-top">
			<div class="container">
				<!-- Navbar brand -->


				<!-- Collapse button -->
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

				<!-- Collapsible content -->
				<div class="collapse navbar-collapse" id="navbarSupportedContent">

					<!-- Links -->
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active">
							<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="Booking.htm">Booking</a>
						</li>
						<!-- Dropdown --> 
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Enquires</a>
							<div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="LocationFinder.htm">Location Finder</a>
								<a class="dropdown-item" href="RateFinder.htm">Find Rate</a>
								<a class="dropdown-item" href="TransitTimeFinder.htm">Find Transit Time</a>
								<a class="dropdown-item" href="CustomerCare.html">Customer Care</a>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="AboutUs.html">About Us</a>
						</li>

						<li>
							<form class="form-inline" action="/action_page.php">
								<input class="form-control mr-sm-2 mr-2" type="text" placeholder="Enter shipment no">
								<button type="button" class="btn btn-primary btn-sm"><i class="fa fa-search" aria-hidden="true"></i>search</button>

							</form>
						</li>
					</ul>
					<!-- Links -->
					<ul class="nav navbar-nav navbar-right">
						<li class="ml-5"><a href="Signup.html" class="white-text p-2" ><i class="fa fa-user fa-lg white-text" aria-hidden="true"></i> SignUp</a></li>
						<li><a href="Login.html" class="white-text mr-4 p-2" ><i class="fa fa-sign-in fa-lg white-text" aria-hidden="true"> Login</i></a></li>
					</ul>
					<!-- Search form -->

				</div>
				<!-- Collapsible content -->
			</div>
		</nav>
		<!--/.Navbar-->


		<main class="mt-5">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4 jumbotron" align="center">
					<p style="font-size:60px" class="font-weight-bold">Courier Charges</p>
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="G2SKQMLFEMSAQ">
<table>
<tr><td><input type="hidden" name="on0" value="Product Charges">Product Charges</td></tr><tr><td><select name="os0">
	<option value="Domestic">Domestic &#8377;300.00 INR</option>
	<option value="Apex">Apex &#8377;350.00 INR</option>
	<option value="Surface">Surface &#8377;600.00 INR</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="INR">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_paynow_SM.gif" border="0" name="submit" alt="PayPal ? The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

				</div>
				<div class="col-md-4 "></div>
			</div>

		</main>

		<!-- Main footer -->
		<!--Footer-->
		<footer class="page-footer stylish-color-dark">

			<!--Footer Links-->
			<div class="container">

				<!-- Footer links -->
				<div class="row text-center text-md-left mt-3 pb-3">

					<!--First column-->
					<div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
						<h6 class="title mb-4 font-bold">Zipment Couriers</h6>
						<p>Delivering Excellence all over the country. Leading Logistics Brand Accross the Nation</p>
					</div>
					<!--/.First column-->

					<hr class="w-100 clearfix d-md-none">

					<!--Second column-->
					<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
						<h6 class="title mb-4 font-bold">Products</h6>
						<p><a href="DomesticPriority.htm">Domestic Priority</a></p>
						<p><a href="DartApex.htm">Dart Apex</a></p>
						<p><a href="DartSurfaceline.htm">Dart Surfaceline</a></p>
						<p><a href="Time.htm">Time Definite Delivery</a></p>
					</div>
					<!--/.Second column-->

					<hr class="w-100 clearfix d-md-none">

					<!--Third column-->
					<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
						<h6 class="title mb-4 font-bold">Useful links</h6>
						<p><a href="Login.html">Your Account</a></p>
						<p><a href="Careers.htm">Careers</a></p>
						<p><a href="RateFinder.htm">Rate Finder</a></p>
						<p><a href="Help.htm">Help</a></p>
					</div>
					<!--/.Third column-->

					<hr class="w-100 clearfix d-md-none">

					<!--Fourth column-->
					<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
						<h6 class="title mb-4 font-bold">Contact</h6>
						<p><i class="fa fa-home mr-3"></i> Andheri,Mumbai-59</p>
						<p><i class="fa fa-envelope mr-3"></i>zipment@gmail.com</p>
						<p><i class="fa fa-phone mr-3"></i>  +91 9821 911 997 </p>
						<p><i class="fa fa-phone mr-3"></i>  +91 8286 817 816</p>
					</div>
					<!--/.Fourth column-->

				</div>
				<!-- Footer links -->

				<hr>

				<div class="row py-3 d-flex align-items-center">

					<!--Grid column-->
					<div class="col-md-8 col-lg-9">

						<!--Copyright-->
						<p class="text-center text-md-left grey-text">© 2017 Copyright: <a href="https://www.MDBootstrap.com"><strong>TrackDart.com</strong></a></p>
						<!--/.Copyright-->

					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-md-4 col-lg-3 ml-lg-0">

						<!--Social buttons-->
						<div class="social-section text-center text-md-left">
							<ul>
								<li><a class="btn-floating btn-sm rgba-white-slight mr-xl-4" href="https://goo.gl/KRPLEj"><i class="fa fa-facebook"></i></a></li>
								<li><a class="btn-floating btn-sm rgba-white-slight mr-xl-4" href="https://goo.gl/egHggi"><i class="fa fa-twitter"></i></a></li>
								<li><a class="btn-floating btn-sm rgba-white-slight mr-xl-4" href="https://goo.gl/FmAEs8"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
						<!--/.Social buttons-->

					</div>
					<!--Grid column-->

				</div>

			</div>

		</footer>
		<!--/.Footer-->

		<!-- SCRIPTS -->
		<script type="text/javascript">

// Time Picker Initialization
$('#input_starttime').pickatime({});

</script>
<!-- JQuery -->
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="js/mdb.min.js"></script>
</body>

</html>