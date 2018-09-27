<%-- 
    Document   : DartSurfaceline
    Created on : Mar 15, 2018, 10:37:10 AM
    Author     : Ashitosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Dart Surfaceline</title>
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
	<!-- Tooltip -->
</head>

<body>
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
						<li class="nav-item">
							<% if (session.getAttribute("userid") == null) { %>
                            <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                            <% } else {%>
                            <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                            <%}%>
						</li>
						<li class="nav-item">
							<% if (session.getAttribute("userid") == null) { %>
                            <a class="nav-link disabled" href="Booking.jsp">Booking</a>
                            <% } else {%>
                            <a class="nav-link" href="Booking.jsp">Booking</a>
                            <%}%>
						</li>
						<!-- Dropdown --> 
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Enquires</a>
							<div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
			                    <a class="dropdown-item font-weight-bold" href="LocationFinder.jsp">Location Finder</a>
                    <a class="dropdown-item font-weight-bold" href="TransitTimeFinder.jsp">Find Transit Time</a>
                    <a class="dropdown-item font-weight-bold" href="RateFinder.jsp">Find Rates</a>
                    <a class="dropdown-item font-weight-bold" href="CustomerCare.jsp">Customer Care</a>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="AboutUs.jsp">About Us</a>
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
						 <% if (session.getAttribute("userid") == null) { %>
           <li class="ml-5"><a href="Signup.jsp" class="white-text p-2" ><i class="fa fa-user fa-lg white-text" aria-hidden="true"></i> SignUp</a></li>
           <li><a href="Login1.jsp" class="white-text mr-4 p-2" ><i class="fa fa-sign-in fa-lg white-text" aria-hidden="true"> Login</i></a></li>
             <% } else {%>
           <li ><a href="logout.jsp" class="white-text ml-4 " style="margin: 0px; padding: 0px" ><i class="fa fa-power-off fa-lg white-text" aria-hidden="true"> SignOut</i></a></li>
           <%}%>
					</ul>
					<!-- Search form -->

				</div>
				<!-- Collapsible content -->
			</div>
		</nav>
		<!--/.Navbar-->



		<!-- Main Section -->

		<main class="mt-5">
			<div class="row">
				<div class="col-md-4">
					<!--Card Wider-->
					<div class="card card-cascade wider">

						<!--Card image-->
						<div class="view overlay">
							<img src="https://mdbootstrap.com/img/Photos/Horizontal/People/6-col/img%20%283%29.jpg" class="img-fluid">
							<a href="#!">
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>
						<!--/Card image-->

						<!--Card content-->
						<div class="card-body text-center">
							<!--Title-->
							<h4 class="card-title"><strong>Alice Mayer</strong></h4>
							<h5 class="indigo-text"><strong>Photographer</strong></h5>

							<p class="card-text">Sed ut perspiciatis unde omnis iste natus sit voluptatem accusantium doloremque laudantium, totam rem aperiam. </p>


							<!--Linkedin-->
							<a class="icons-sm li-ic"><i class="fa fa-linkedin"> </i></a>
							<!--Twitter-->
							<a class="icons-sm tw-ic"><i class="fa fa-twitter"> </i></a>
							<!--Dribbble-->
							<a class="icons-sm fb-ic"><i class="fa fa-facebook"> </i></a>

						</div>
						<!--/.Card content-->

					</div>
					<!--/.Card Wider-->

				</div>
				<div class="col-md-6">

					<p class="red-text"><b>Dart Surfaceline</b></p>
					<p><b>Dart Surfaceline is an economical, door-to-door, ground distribution service to over 35,000 locations in India for shipments weighing 10 kgs and above. It offers a cost-effective logistics option for your less time-sensitive shipments, with the following value-added features and benefits:</b></p>
					<ul>
						<li><b>Time-bound Delivery</b><p>A fleet of vehicles run to pre-determined schedules to provide committed delivery. Click on Transit Time Finder for information on delivery time, or Contact Blue Dart.<br> <span class="red-text">The transit times shown are indicative. The Transit time can change due to monsoon conditions and other force majeure events.</span></p></li>
						<li><b>COD (Cash on Delivery)</b><p>The invoice value of the shipment booked by you will be collected from the consignee in the form of cash at the time of the delivery. The cash collected from the consignee will be returned back to you to complete the transaction.</p></li>
						<li><b>DOD (Demand Draft on Delivery)</b><p>The invoice value of the shipment booked by you will be collected from the consignee in the form of a demand draft at the time of the delivery. The demand draft collected from the consignee will be returned back to you to complete the transaction.</p></li>
						<li><b>FOD (Freight on Delivery)</b><p>The freight of the shipment will be collected from the consignee at the time of delivery.</p></li>
						<li><b>FOV (Freight on Value) - Insurance Arrangement</b><p>Blue Dart Express (BDE) can facilitate arrangements to insure your goods through an insurance company. In an eventuality of the shipment being damaged or lost while in BDE custody, BDE would assist you in the claim process and ensure the claim is settled in the minimum possible time after shipper/consignee handover required documents to the insurance company</p></li>
						<li><b>Track your Shipment</b><p>Over the net, or Contact Blue Dart to receive information on the status of your shipment. You can also view, download and print copies of Proof Of Deliveries and Delivery challans of Dart Surfaceline shipments</p></li>
						<li><b>Regulatory Clearances</b><p>Our team of specialists will provide you with the clearance support required to ensure a smooth delivery. Click on Regulatory for details of the paperwork requirements, or Contact Blue Dart for assistance.</p></li>
						<li><b>Pick-up Convenience</b><p>You may Contact Blue Dart to schedule a pick-up, and your shipment will be picked-up, transported, cleared through regulatory channels and delivered to the consignee, while you are able to receive updated information and proof of delivery on demand. </p></li>
						<li><b>Secure Shipments</b><p>All the destinations serviced by Dart Surfaceline are supported by our own warehouses, manned by trained professionals to ensure the safety and security of your shipments.</p></li>
						<li><b>Economical Tariff</b><p>All these benefits are available at charges that support value-pricing. Click on Price Finder for the applicable tariff.</p></li>
					</ul>
					<p>Our services are subject to our Terms and Conditions of Domestic Carriage - Dart Surfaceline, and the liability terms incorporated therein. Please read these carefully before you avail of our services.</p>
					<p>Security regulations do not permit carriage of certain items on the Dart Surfaceline mode. Click on Banned Commodities-All Services and Dangerous Goods prohibited on Blue Dart for information on these items or Contact Blue Dart for details.</p>

					<p>For any further assistance with your Dart Surfaceline shipment Contact Blue Dart.</p>
					<p>For information on Fuel Surcharge Click Here</p>
					<p>Click on Case Study #4, #13 for business solutions using Dart Surfaceline services.</p>
				</div>
				<div class="col-md-2">

				</div>
			</div>

		</main>
		<!-- Main Section -->


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
						<p><a href="TimeDefiniteDelivery.htm">Time Definite Delivery</a></p>
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

