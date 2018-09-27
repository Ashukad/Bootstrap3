<%-- 
    Document   : DomesticPriority
    Created on : Mar 15, 2018, 10:38:05 AM
    Author     : Ashitosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Domestic Priority</title>
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
                                <a class="dropdown-item" href="LocationFinder.jsp">Location Finder</a>
                                <a class="dropdown-item" href="RateFinder.jsp">Find Rate</a>
                                <a class="dropdown-item" href="TransitTimeFinder.jsp">Find Transit Time</a>
                                <a class="dropdown-item" href="CustomerCare.jsp">Customer Care</a>
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

            <p class="red-text"><b>Domestic Priority</b></p>
            <p>
                The fastest, most reliable, door-to-door day-definite delivery service across India for documents and small shipments under 32 kgs per package. The special benefits of this service are:
            </p>
            <ul>
                <li>
                    <b>Delivery across Zipments Country in India</b>
                    <p>Click on Location Finder to search for the delivery locations you require, or Contact Zipments.</p>
                    <li>
                        <b>Free pick-up from your location</b>
                        <p>Click Here to organize a pick-up.</p>
                    </li>
                    <li>
                        <p><b>Real-time</b>Tracking through the net, providing you with information on your shipments from pick-up to delivery. You may also Contact Zipments for information on the status of your consignments.</p>
                    </li>
                    <li>
                        <p><b>Regulatory Clearances</b>for all States in India taken care of by our team of specialists, to resolve your regulatory requirements. Check Regulatory to confirm details of the paperwork required to clear your shipments, or Contact Zipments.</p> 
                 </li>
                 <li>
                    <p><b>Free Computerized Proof of Delivery</b>On demand, confirming the date and time of delivery as well as the name of the person receiving the consignment. You may use Tracking for viewing your Proof of Delivery, or Contact Zipments. 
                    </p>
                </li>

            </ul>
            <p>
                Domestic Priority provides a 'Next Day' delivery service to most locations in India. Click on Transit Time Finder for more information. Price Finder will provide you with the applicable tariff.
            </p>
            <p>
                Our services are subject to our Terms and Conditions of Domestic Carriage - Domestic Priority, and the liability terms incorporated therein. Please read these carefully before you avail of our services
            </p>
            <p>
                Security regulations do not permit carriage of certain items on the Domestic Priority mode. Click on Restricted Commodities-Domestic Priority and Dangerous Goods prohibited on Zipments for information on these items or Contact Zipments for assistance.
            </p>

            <p class="red-text"><b>Important Message:</b></p>

            <p>We are privileged to be of service to you. 
            </p>

            <p>Please help us to help you save your precious time and ensure security of your packages</p>

            <p><b>Please:</b></p>

            <ol>
                <li>Hand over your packages in an open condition </li>
                <li>Provide invoices for all non-documents
                </li>
            </ol>

            <p>If you are our new customer, we would also like to appraise you of certain procedures that you may not be aware of. Shipments sent by you are liable to be security checked by various Government of India Regulatory Bodies. In case of any query subsequent to carriage, Zipments is obliged under law to prove the identity of the shipper to the Regulatory Body that originates the query.</p>

            <p>
                To ensure compliance with the Security and Safety Regulations, we request you to kindly furnish us with proof of photo identity which will be photo copied and kept in confidentiality with our records at the time of booking your shipment. 
            </p>

            <p>We appreciate your understanding and thank you for your kind cooperation. </p>

            <p>Thank you for your co-operation.</p>

            <p>For any further assistance with your Domestic Priority consignment Contact Zipments.</p>

            <p>For information on Fuel Surcharge Click Here</p>

            <p>Click on Case Study #1, #2, #3, #5, #14 for business solutions using Domestic Priority Services.</p>

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

