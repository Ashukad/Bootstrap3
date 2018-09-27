<%-- 
    Document   : TimeDefiniteDelivery
    Created on : Mar 15, 2018, 10:41:03 AM
    Author     : Ashitosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Time Definite Service</title>
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
           <% } %>
             </ul>
             <!-- Search form -->

         </div>
         <!-- Collapsible content -->
     </div>
 </nav>
 <!--/.Navbar-->



 <!-- Main Layout -->

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
 		<div class="col-md-6 "><b>Time Definite Delivery  1030</b>

 			<p>
 				A guaranteed door-to-door time definite delivery of shipments by air the next possible business day by
 				10:30 hours, targeted at time-critical business-to-business needs. 
 			</p>

 			<ul style="list-style-type:disc">
 				<li>An Express time definite service with Money Back Guarantee* (MBG) to the select
 					pincodes in Chennai, Delhi, Ahmedabad, Mumbai, Bangalore, Navi Mumbai and
 				Gurgaon by 10:30 hrs on the next possible business day. </li>
 				<li>Pickup service is available from Kolkata, Delhi, Gurgaon, Ghaziabad, Noida,
 					Hyderabad,Chennai, Maraimalai Nagar, Sholinganallur, Bengaluru, Mumbai, Kolhapur,
 					Navi Mumbai, Nagpur, Pune, Ahmedabad, Ankleshwar, Anand, Vadodara, Dewas, Indore,
 					Mehsana, Rajkot, Surat, Udaipur, Vapi, Bhavnagar, Coimbatore, Godhra, Hubli, Jaipur and
 				Kalol. </li>
 				<li>Suitable for all retail and credit customers. </li>
 				<li>Domestic Priority 1030 is not available from all local origins, or to all destinations. </li>
 				<li>Availability depends on local cut-off and vehicle arrival times, or flight arrival times when
 				these apply</li>

 			</ul>

 			<b>Basic Features</b>
 			<ul style="list-style-type:disc">
 				<li>Real-time tracking</li>
 				<li>Money Back Guarantee* (MBG)</li>
 			</ul>

 			<hr>

 			<b>Important Note</b>
 			<ul style="list-style-type:disc">
 				<li>For booking Click Here</li>
 				<li>Prevailing terms and conditions of carriage apply, in addition to specific TDD terms and
 				conditions </li>
 				<li>Shipper pays the transport charges. </li>
 				<li><b>For more details on serviceable locations, please contact our nearest customer
 				service team or visit your nearest Zipment-DHL retail store. </b></li>
 			</ul>
 		</div>
 		<div class="col-md-2"></div>


 	</div>
 	<div class="container jumbotron table-bordered">
 		<!--Table-->
 		<table class="table">

 			<!--Table head-->
 			<thead class="blue-grey lighten-4">
 				<tr>
 					<th>Ahmedabad</th>
 					<th>Bangalore</th>
 					<th>Chennai</th>
 					<th>Delhi</th>
 					<th>Hyderabad</th>
 					<th>Kolkata</th>
 					<th>Mumbai</th>
 				</tr>
 			</thead>
 			<!--Table head-->

 			<!--Table body-->
 			<tbody>
 				<tr>
 					<th scope="row">1</th>
 					<td>26554600/
 					1860-233-1234 </td>
 					<td>25021234/
 					1860-233-1234</td>
 					<td>28241234/
 					1860-233-1234 </td>
 					<td>26941111/
 					1860-233-1234 </td>
 					<td>66161234 </td>
 					<td>28241234/
 					1860-233-1234</td>
 				</tr>

 			</tbody>
 			<!--Table body-->

 		</table>
 		<!--Table-->
 	</div>
 	<div class="row">
 		<div class="col-md-4">

 			
    <!-- Card -->
<div class="card card-image" style="background-image: url(https://mdbootstrap.com/img/Photos/Horizontal/Work/4-col/img%20%2814%29.jpg);">

    <!-- Content -->
    <div class="text-white text-center d-flex align-items-center rgba-black-strong py-5 px-4">
        <div>
            <h5 class="pink-text"><i class="fa fa-pie-chart"></i> Marketing</h5>
            <h3 class="card-title pt-2"><strong>This is card title</strong></h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat fugiat, laboriosam, voluptatem,
                optio vero odio nam sit officia accusamus minus error nisi architecto nulla ipsum dignissimos.
                Odit sed qui, dolorum!.</p>
            <a class="btn btn-pink"><i class="fa fa-clone left"></i> View project</a>
        </div>
    </div>
    <!-- Content -->
</div>
<!-- Card -->
 			
 		</div>
 		<div class="col-md-6">
 			<p><b>*Terms & Conditions for Money Back Guarantee (MBG) </b></p>
 			<p class="red-text"><b>Time Definite Delivery (TDD) shipments will be governed by following additional terms and
 			conditions. </b></p>
 			<p><b>Time Definite Delivery  1030</b></p>
 			<p><b>Zipment will, upon the Shipper's request and subject to the restrictions described below, provide
 				either a credit or refund of the freight + TDD premium + fuel surcharge paid by the Shipper for
 				DOMESTIC PRIORITY 1030 shipment, which is delivered later than Zipment's quoted delivery
 			commitment time, subject to the following terms and conditions:</b></p>

 			<p>
 				<ol>
 					<li>The shipper shall specify the requested service on the waybill. If any information provided
by the Shipper proves to be inaccurate and if shipment is tendered to Zipment
substantially later than the time agreed with Zipment for pick-up, and if delivery attempt is
made within the specified time, but shipment is not delivered, no guarantee shall apply. </li>
 					<li>The guarantee applies only to freight + TDD premium + fuel surcharge paid for the TDD
shipment. The guarantee is exclusive of all other items, including, without limitation, fines,
taxes or other charges or amounts. Payment by Zipment of the freight + TDD premium +
fuel surcharge to the shipper or another party nominated by the shipper shall constitute a
full release of Zipment’s obligations for any delay under the money-back guarantee to any
interested party. </li>
 					<li>Shipper must notify Zipment of any claim for late delivery, in writing or by telephone, within
48 hours of the shipment date and provide Zipment with the account number (if any), the
waybill number, the date of shipment, and complete receiver information. </li>
 					<li>If a shipper has an extremely time-sensitive shipment, the loss or delay of which may result
in consequential damages, the shipper must take adequate Insurance to insure against
such risks, as Zipment does not assume any consequential claims or liabilities. Zipment
does not provide and will not arrange for such insurance. </li>
 					<li>All other provisions of Zipment Terms and Conditions of Carriage apply. This money-back
guarantee is subject to amendments or cancellation by Zipment at any time. </li>
 				</ol>
 			</p>
 			<p><b>CHARGES FOR THE TIME DEFINITE DELIVERY (In addition to applicable freight & other charges)</b></p>

 			<p>Applicable Charges*:</p>
			<!--Table-->
<table class="table table-bordered">
    
    <!--Table head-->
    <thead>
        <tr>
            <th>First 500 gms</th>
            <th>Rs150</th>
        </tr>
    </thead>
    <!--Table head-->

    <!--Table body-->
    <tbody>
        <tr>
            <th scope="row">Additional 500 gms</th>
            <th>Rs75</th>
    </tbody>
    <!--Table body-->

</table>
<!--Table-->

		<p class="red-text"><b>Note for Zipment Account Customers: </b></p>
		<p class="red-text">Please contact our Sales Team or Customer Service for updating the Customer Contract Form. </p>
 		</div>
 		<div class="col-md-2"></div>
 	</div>

 </main>
<!-- Main Layout -->
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
                <p><a href="DomesticPriority.jsp">Domestic Priority</a></p>
                <p><a href="DartApex.jsp">Dart Apex</a></p>
                <p><a href="DartSurfaceline.jsp">Dart Surfaceline</a></p>
                <p><a href="TimeDefiniteDelivery.jsp">Time Definite Delivery</a></p>
            </div>
            <!--/.Second column-->

            <hr class="w-100 clearfix d-md-none">

            <!--Third column-->
            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                <h6 class="title mb-4 font-bold">Useful links</h6>
                <p><a href="Login.jsp">Your Account</a></p>
                <p><a href="Careers.jsp">Careers</a></p>
                <p><a href="RateFinder.jsp">Rate Finder</a></p>
                <p><a href="Help.jsp">Help</a></p>
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
                <p class="text-center text-md-left grey-text">© 2017 Copyright: <a href="index.jsp"><strong>TrackDart.com</strong></a></p>
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
