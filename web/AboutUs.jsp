<%-- 
    Document   : AboutUs
    Created on : Mar 15, 2018, 10:31:21 AM
    Author     : Ashitosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>About Zipment</title>
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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"></script>
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
            <li class="nav-item active">
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
                <a class="nav-link" href="#">About Us</a>
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
           <li ><a href="logout.jsp" class="white-text ml-4 " style="margin: 0px; padding: 0px" ><i class="fa fa-sign-out fa-lg white-text" aria-hidden="true"> SignOut</i></a></li>
           <% } %>
           
       </ul>
             <!-- Search form -->
       
      </div>
    <!-- Collapsible content -->
    </div>
    
    <!-- Feedback Modal -->
        

<!-- Full Height Modal Right -->

                                          
                      
    <!-- Feedback Modal -->
</nav>
<!--/.Navbar-->
<!--<hr class="mt-5">-->
<br/>

    <div class="container-fluid mt-5">
                <!-- Grid Row -->
                  <div class="row">
                        <!-- Grid column -->
                            <div class="col-md-6 mb-5" >
                                <div class="view overplay hm-white-light z-depth-1-half">
                                    <img src="images/work7.jpg" class="img-fluid mx-auto d-block" alt="courier">
                                    <div class="mask"></div>
                                </div>
                            </div>
                    
                            <div class="col-md-6">
                                <h2 class="font-weight-bold">About Us</h2>
                                <hr>
                                <p class="text-justify">
                                    Zipment is one of the premium courier service company in South Asia. It is a subsidiary of the DHL group and was started in the year 1991. As of now, it has branches in more than 200 countries. It was acquired by the DHL in the year 2005 and continued to operate as an independent courier company.
                                </p><p class="text-justify">
Zipment offers many services to its customers and some of them are highly customized based on their preferences. With premium services, it enable the blue dart courier tracking option with which the prgoress the package can be checked. It provides the facility to pick up packages from homes and also offers 24x7 services. It partnered up with many eCommerce agencies and delivers their products. It guarantees the delivery of the goods within time. Apart from this, it makes sure that the packages are tightly secured and handled with care.
                                </p>
                                
                            </div>
                        <!-- Grid column -->
                </div>
                <!-- Grid Row -->
         </div> 
    </header>
    <!-- Main Navigation-->
 <!-- Main Layout -->
 <br/>
 <main class="mt-auto">
        <!-- Main container -->
               <div class="container">
                         
                <br/>
                <section id="reason" class="text-center">
                    <h2 class="mb-4 font-weight-bold">Why to choose Zipment?</h2>
                    <hr>
                    <br/>
                    <br/>
                <!-- Grid row-->
                <div class="row">
                     <!-- heading -->
                
                    <!-- Grid column-->
                    <div class="col-md-4 mb-4">
                        <i class="fa fa-calculator fa-4x orange-text animated bounce infinite" aria-hidden="true"></i>
                        <h4 class="my-4 font-weight-bold ">Charges</h4>
                        <p class="grey-text font-weight-bold">We calculate the delivery charge immediately after you fill in our online form. You no longer need to call and ask for quotes.</p>
                    </div>
                    <!-- Grid column-->
                    
                    <!-- Grid column-->
                    <div class="col-md-4 mb-4">
                        <i class="fa fa-comment fa-4x orange-text animated rubberBand infinite" aria-hidden="true"></i>
                        <h4 class="my-4 font-weight-bold">Notification</h4>
                        <p class="grey-text font-weight-bold">We send courier's phone number to the contact person via SMS at each delivery point.</p>
                    </div>
                    <!-- Grid column-->
                    
                    <!-- Grid column-->
                    <div class="col-md-4 mb-4">
                        <i class="fa fa-plane fa-4x orange-text animated jello infinite" aria-hidden="true"></i>
                        <h4 class="my-4 font-weight-bold">International</h4>
                        <p class="grey-text font-weight-bold">Walking couriers and drivers are always available. We assign the nearest courier with the highest rating within 7 minutes.</p>
                    </div>
                    <!-- Grid column-->
                    
                </div>
                <!-- Grid row-->
                </section>
            <!-- section best feature -->
            <hr>
            
            <!-- Section Services -->
            <section id="gallery">
            <h2 class="mb-5 font-weight-bold text-center">Services</h2>
                <!-- Grid row -->
                <div class="row">
	
                            <!-- Grid column-->
                            <div class="col-md-6">
                                <!--Carousel Wrapper-->
<div id="carousel-example-1z" class="carousel slide carousel-fade" data-ride="carousel">
    <!--Indicators-->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-1z" data-slide-to="1"></li>
        <li data-target="#carousel-example-1z" data-slide-to="2"></li>
    </ol>
    <!--/.Indicators-->
    <!--Slides-->
    <div class="carousel-inner" role="listbox">
        <!--First slide-->
        <div class="carousel-item active">
            <img class="d-block w-100" src="images/work10.jpg" alt="First slide">
        </div>
        <!--/First slide-->
        <!--Second slide-->
        <div class="carousel-item">
            <img class="d-block w-100" src="images/work9.jpg" alt="Second slide">
        </div>
        <!--/Second slide-->
        <!--Third slide-->
        <div class="carousel-item">
            <img class="d-block w-100" src="images/work1.jpg" alt="Third slide">
        </div>
        <!--/Third slide-->
    </div>
    <!--/.Slides-->
    <!--Controls-->
    <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
    <!--/.Controls-->
</div>
<!--/.Carousel Wrapper-->
                            </div>
                            <!-- Grid column-->

                            <!-- Grid column-->
                            <div class="col-md-6">
                                <a href="" class="teal-text">
	<h6 class="mb-4"><i class="fa fa-heart mr-2"></i><strong>Lifestyle</strong> </h6>
</a>

<h4 class="mb-3"><strong>Express Delivery Services & International Shipping
</strong></h4>

<p>When you ship with Zipment Express – you’re shipping with specialists in international shipping and courier delivery services! With our wide range of express parcel and package services, along with shipping and tracking solutions to fit your needs – learn how DHL Express can deliver!
 
</p>

<p></p>

<p>by <a href=""><strong>Ashutosh Kadam</strong></a>, 20.09.2017</p>
                            </div>
                            <!-- Grid column-->

                    </div>
                    <!-- Grid row -->
            </section>
            <!-- Section Services -->
            <hr class="my-5">
            
            <!-- Section Video -->
            <section id="video">
                 <h2 class="mb-5 font-weight-bold text-center">Overview</h2>
                 <br/>
                 <div class="container">
                <div class="row">
                    <div class="col-md-6 mt-2">
             <!-- 16:9 aspect ratio -->
<div class="embed-responsive embed-responsive-4by3">
  <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/BuvV5CPNAX4"></iframe>
</div>
                    </div>
                    <div class="col-md-5 ml-5 pl-5">
                        <h1> <canvas id="pieChart" class="h-100 d-inline-block" style="width: 40%;height: 40%">
                             </canvas></h1>
                        <h4 class="text-center">Service Areas</h4>
                        <script>
                             //pie
var ctxP = document.getElementById("pieChart").getContext('2d');
var myPieChart = new Chart(ctxP, {
    type: 'pie',
    data: {
        labels: ["India", "Ireland", "Brasil", "USA"],
        datasets: [
            {
                data: [300, 50, 100, 40, 120],
                backgroundColor: ["#F7464A", "#46BFBD", "#FDB45C", "#949FB1"],
                hoverBackgroundColor: ["#FF5A5E", "#5AD3D1", "#FFC870", "#A8B3C5"]
            }
        ]
    },
    options: {
        responsive: true
    }    
});

                        </script>
            
            
    
                        
                    </div>
                </div>
                     </div>
            </section>
            <!-- Section Video -->
            <hr class="my-5">
               </div>
        <!-- Main container -->
        
    </main>
 <!--Main Layout -->   

 
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
                <p><a href="DartApex.htm">Dart Surfaceline</a></p>
                <p><a href="TimeDefiniteDelivery.htm">Time Definite Delivery</a></p>
            </div>
            <!--/.Second column-->

            <hr class="w-100 clearfix d-md-none">

            <!--Third column-->
            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                <h6 class="title mb-4 font-bold">Useful links</h6>
                <p><a href="Login.html">Your Account</a></p>
                <p><a href="#!">Careers</a></p>
                <p><a href="RateFinder.htm">Rate Finder</a></p>
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
                <p class="text-center text-md-left grey-text">© 2017 Copyright: <a href="index.htm"><strong>TrackDart.com</strong></a></p>
                <!--/.Copyright-->

            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-md-4 col-lg-3 ml-lg-0">

                <!--Social buttons-->
                <div class="social-section text-center text-md-left">
                    <ul>
                        <li><a class="btn-floating btn-sm rgba-white-slight mr-xl-4" href="www.facebook.com"><i class="fa fa-facebook"></i></a></li>
                        <li><a class="btn-floating btn-sm rgba-white-slight mr-xl-4" href="www.twitter.com"><i class="fa fa-twitter"></i></a></li>
                        <li><a class="btn-floating btn-sm rgba-white-slight mr-xl-4" href="www.google.com"><i class="fa fa-google-plus"></i></a></li>
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

