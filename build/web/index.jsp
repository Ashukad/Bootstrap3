<%-- 
    Document   : index
    Created on : Mar 14, 2018, 5:16:27 PM
    Author     : Ashitosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Welcome<%=session.getAttribute("userid")%></title>
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
<nav class="navbar navbar-expand-md navbar-dark stylish-color-dark fixed-top">
    <div class="container">
        <!-- Navbar brand -->
    

    <!-- Collapse button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
        aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

    <!-- Collapsible content -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <!-- Links -->
        <ul class="navbar-nav mr-auto">
            <li class="nav-item ">
                <a class="nav-link " href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="Booking.jsp">Booking</a>
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
                <form class="form-inline" action="Tracking.jsp">
            <input class="form-control mr-sm-2 mr-2 " type="text" placeholder="Enter shipment no">
            <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-search" aria-hidden="true"></i>search</button>

            </form>
            </li>
        </ul>
        <!-- Links -->
       <ul class="nav navbar-nav navbar-right">
           <li class="ml-5 white-text text-center"><h5><%=session.getAttribute("userid")%></h5></li>
           <li ><a href="logout.jsp" class="white-text ml-4" ><i class="fa fa-power-off fa-lg white-text" aria-hidden="true">SignOut</i></a></li>
       </ul>
             <!-- Search form -->
       
      </div>
    <!-- Collapsible content -->
    </div>
</nav>
<!--/.Navbar-->
    
        <!-- mask -->
        <div id="intro" class="view hm-black-strong col-sm-12 col-xm-12">
            <div class="container-fluidt full-bg-img d-flex align-items-center justify-content-center">
                <div class="row d-flex justify-content-center">
                    
                    <div class="col-md-10 text-center">
                         <!-- heading -->
                         <p class="h2 white-text">Got a Courier? Book Now</p>

<!-- Divider -->
<hr class="hr-light">

<!-- Description -->
<h4 class="h4-responsive white-text">The fastest and easiest way to deliver your Goods.</h4>
<form action="AboutUs.jsp">
<button type="submit" class="btn btn-outline-white" data-toggle="AboutUs" data-target="AboutUs.jsp">Read more<i class="fa fa-book ml-2"></i></button>
                     </form>
                    </div>
                       
                </div> 
            </div>
        </div>
        <!-- mask -->
        
    </header>
    <!-- Main Navigation-->
    
    <!-- Main Layout -->
    <main class="mt-5">
        

        <div class="container">
            <div class="row">

        <div class="col-lg-7 mb-4">

            <div class="view overlay hm-white-light z-depth-1-half">
                <img src="img/Transport.jpg" class="img-fluid" alt="nature">
                <div class="mask"></div>                    
            </div>
        </div>
        <div class="col-lg-5 mb-4">
                <!-- Heading -->
                <h2 class="mb-5 font-weight-bold text-center"><u>Contact Us</u></h2>
                <hr>
                            <!-- Form Contact -->
                            <form class="p-3">
                                
                                <div class="md-form form-lg">
                                    <i class="fa fa-user prefix grey-text"></i>
                                    <input type="text" id="input-1" class="form-control">
                                    <label for="input-1">Your Name</label>
                                </div>
                                
                                <div class="md-form form-lg">
                                    <i class="fa fa-envelope prefix grey-text"></i>
                                    <input type="email" id="input-2" class="form-control">
                                    <label for="input-2">Your email</label>
                                </div>
                                
                                <div class="md-form form-lg">
                                    <i class="fa fa-tag prefix grey-text"></i>
                                    <input type="text" id="input-3" class="form-control">
                                    <label for="input-3">Subject</label>
                                </div>
                                
                                <div class="md-form form-lg">
                                    <i class="fa fa-pencil prefix green-text"></i>
                                    <textarea id="input-4" class="md-textarea" style="height: 80px"></textarea>
                                    <label for="input-4">Your message</label>
                                </div>
                                
                                <div class="text-center">
                                    <button class="btn btn-unique">Send<i class="fa fa-paper-plane-o ml-2"></i></button>
                                </div>
                            </form>
                            <!-- Form Contact -->
                        </div>
                        <!-- Grid Column -->
                        
                        
                    </div>
                    <!-- Grid Row -->
               
           
            <!-- Section Contact-->
        </div>               
   

            <!-- section best feature -->
            <section id="best-feature" class="text-center">
                <!-- heading -->
                <h2 class="mb-4 font-weight-bold"><i class="fa fa-quote-left fa-lg mt-1 orange-text" aria-hidden="true"></i>Best Feature<i class="fa fa-quote-left fa-lg mt-1 orange-text" aria-hidden="true"></i></h2>
                
                <!-- Grid row -->
                <div class="row d-flex justify-content-center mb-4">
                    <!--Grid column -->
                    <div class="col-md-8">
                        
                        <!-- description -->
                        <p class="grey-text">We provide you the most advanced and Efficient means of service.The Experience that you will love to go through.
                                Well managed and timeless delivery techniques.A chance to become Digital</p> 
                        
                    </div>
                    <!--Grid column -->
                </div>
                <!-- Grid row -->
                
                <section id="reason" class="text-center">
                    <h2 class="mb-4 font-weight-bold">Why to choose Zipment?</h2>
                    <hr class="hr-light">
                <!-- Grid row-->
                <div class="row">
                     <!-- heading -->
                
                    <!-- Grid column-->
                    <div class="col-md-4 mb-4">
                        <i class="fa fa-calculator fa-4x orange-text animated bounce infinite" aria-hidden="true"></i>
                        <h4 class="my-4 font-weight-bold">Charges</h4>
                        <p class="grey-text">We calculate the delivery charge immediately after you fill in our online form. You no longer need to call and ask for quotes.</p>
                    </div>
                    <!-- Grid column-->
                    
                    <!-- Grid column-->
                    <div class="col-md-4 mb-4">
                        <i class="fa fa-comment fa-4x orange-text animated jello infinite" aria-hidden="true"></i>
                        <h4 class="my-4 font-weight-bold">Notification</h4>
                        <p class="grey-text">We send courier's phone number to the contact person via SMS at each delivery point.</p>
                    </div>
                    <!-- Grid column-->
                    
                    <!-- Grid column-->
                    <div class="col-md-4 mb-4">
                        <i class="fa fa-plane fa-4x orange-text animated rubberBand infinite" aria-hidden="true"></i>
                        <h4 class="my-4 font-weight-bold">International</h4>
                        <p class="grey-text">Walking couriers and drivers are always available. We assign the nearest courier with the highest rating within 7 minutes.</p>
                    </div>
                    <!-- Grid column-->
                    
                </div>
                <!-- Grid row-->
                </section>
            </section>
            <!-- section best feature -->
            <hr class="my-5">
            
            <!-- section best feature -->
            <section id="example">
                <div class="container">
                    <div class="row">
        <div class="col-lg-4 col-md-12 mb-4">

            <!--Card-->
            <div class="card">

                <!--Card image-->
                <div class="view overlay hm-white-slight hm-zoom">
                    <img src="img/CourierMan.png" class="img-fluid" alt="Courier Man">
                    <a href="#">
                        <div class="mask"></div>
                    </a>
                </div>

                <!--Card content-->
                <div class="card-body">
                    <!--Title-->
                    <h4 class="card-title">Domestic Priority </h4>
                    <!--Text-->
                    <p class="card-text">The fastest, most reliable, door-to-door day-definite delivery service across India for documents and small shipments under 32 kgs per package.</p>
                    <a href="#" class="btn btn-indigo">Find Our More</a>
                </div>

            </div>
            <!--/.Card-->

        </div>

        <div class="col-lg-4 col-md-6 mb-4">

            <!--Card-->
            <div class="card">

             <!--Card image-->
             <div class="view overlay hm-white-slight hm-zoom">
                <img src="img/AirTransport.png" class="img-fluid" alt="">
                <a href="#">
                 <div class="mask"></div>
             </a>
         </div>

         <!--Card content-->
         <div class="card-body">
            <!--Title-->
            <h4 class="card-title">Dart Apex</h4>
            <!--Text-->
            <p class="card-text">Dart Apex is a door-to-door day-definite delivery service within India for shipments weighing 10kgs. and above. </p>
            <a href="#" class="btn btn-indigo">Find Our More</a>
        </div>

    </div>
    <!--/.Card-->

</div>

<div class="col-lg-4 col-md-6 mb-4">


    <!--Card-->
    <div class="card">

        <!--Card image-->
        <div class="view overlay hm-white-slight hm-zoom">
            <img src="img/Transportvehicle.jpg" class="img-fluid" alt="">
            <a href="#">
                <div class="mask"></div>
            </a>
        </div>

        <!--Card content-->
        <div class="card-body">
            <!--Title-->
            <h4 class="card-title">Dart Surfaceline</h4>
            <!--Text-->
            <p class="card-text">Dart Surfaceline is an economical, door-to-door, ground distribution service to over 35,000 locations in India for shipments weighing 10 kgs and above. </p>
            <a href="#" class="btn btn-indigo">Find Our More</a>
        </div>

    </div>
    <!--/.Card-->

</div>

</div>
                </div>
            </section>
            <!-- section best feature -->
            <hr class="my-5">
            
         
   
        
        
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
                <h6 class="title mb-4 font-bold">TrackDart Couriers</h6>
                <p>Delivering Excellence all over the country. Leading Logistics Brand Accross the Nation</p>
            </div>
            <!--/.First column-->

            <hr class="w-100 clearfix d-md-none">

            <!--Second column-->
            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
                <h6 class="title mb-4 font-bold">Products</h6>
                <p><a href="#!">Domestic Priority</a></p>
                <p><a href="#!">Dart Apex</a></p>
                <p><a href="#!">Dart Surfaceline</a></p>
                <p><a href="#!">Time Definite Delivery</a></p>
            </div>
            <!--/.Second column-->

            <hr class="w-100 clearfix d-md-none">

            <!--Third column-->
            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                <h6 class="title mb-4 font-bold">Useful links</h6>
                <p><a href="Login.html">Your Account</a></p>
                <p><a href="#!">Careers</a></p>
                <p><a href="#!">Rate Finder</a></p>
                <p><a href="#!">Help</a></p>
            </div>
            <!--/.Third column-->

            <hr class="w-100 clearfix d-md-none">

            <!--Fourth column-->
            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                <h6 class="title mb-4 font-bold">Contact</h6>
                <p><i class="fa fa-home mr-3"></i> Andheri,Mumbai-59</p>
                <p><i class="fa fa-envelope mr-3"></i> trackdart@gmail.com</p>
                <p><i class="fa fa-phone mr-3"></i> + +91 9821 911 997 </p>
                <p><i class="fa fa-phone mr-3"></i> + +91 8286 817 816</p>
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
                        <li><a class="btn-floating btn-sm rgba-white-slight mr-xl-4"><i class="fa fa-facebook"></i></a></li>
                        <li><a class="btn-floating btn-sm rgba-white-slight mr-xl-4"><i class="fa fa-twitter"></i></a></li>
                        <li><a class="btn-floating btn-sm rgba-white-slight mr-xl-4"><i class="fa fa-google-plus"></i></a></li>
                        <li><a class="btn-floating btn-sm rgba-white-slight mr-xl-4"><i class="fa fa-linkedin"></i></a></li>
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
