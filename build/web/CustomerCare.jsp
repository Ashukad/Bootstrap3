<%-- 
    Document   : CustomerCare
    Created on : Mar 15, 2018, 10:36:08 AM
    Author     : Ashitosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Customer Service Centers</title>
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
    <!-- Main Navigation-->
    <br/>
    <br/>
    <main>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
        <!--Table-->
<table class="table">

    <!--Table head-->
    <thead class="mdb-color darken-3">
        <tr class="text-white">
            <th>#</th>
            <th>Location</th>
            <th>Address</th>
            <th>Telephone</th>
            <th>Pincode</th>
        </tr>
    </thead>
    <!--Table head-->

    <!--Table body-->
    <tbody>
        <tr>
            <th scope="row">1</th>
            <td>AHMEDABAD</td>
            <td>ZIPMENT EXPRESS LTD
 SHALIMAR CO-OP HSG SOC
NEAR EMBASSY MARKET
OFF ASHRAM ROAD</td>
            <td>1860 233 1234</td>
            <td>380008</td>
        </tr>
        <tr>
            <th scope="row">2</th>
            <td>BENGALURU</td>
            <td>ZIPMENT EXPRESS LTD
GROUND FLOOR
CONNECTION POINT
AIRPORT EXIT ROAD</td>
            <td>1860 2331 234</td>
            <td>569999</td>
        </tr>
        <tr>
            <th scope="row">3</th>
            <td>KOLKATA</td>
            <td>ZIPMENT EXPRESS LTD
KANAK BUILDING
3RD FLOOR
JAWAHARLAL NEHRU ROAD
(OLD CHOWRINGEE ROAD)</td>
            <td>1860 233 1234</td>
            <td>700071</td>
        </tr>
        <tr>
            <th scope="row">4</th>
            <td>CHENNAI</td>
            <td>ZIPMENT EXPRESS LTD
11(OLD NO.38), STATUS QUO
STERLING ROAD
NUNGAMBAKKAM</td>
            <td>1860 233 1234</td>
            <td>600034</td>
        </tr>
        <tr>
            <th scope="row">5</th>
            <td>COIMBATORE</td>
            <td>ZIPMENT EXPRESS LTD
PAGA TOWERS
8/128 TO 132 , KATTOOR STREET
P.N.PALAYAM,</td>
            <td>2243 383, 2248 071, 2246 832</td>
            <td>641037</td>
        </tr>
        <tr>
            <th scope="row">6</th>
            <td>NEW DELHI</td>
            <td>ZIPMENT EXPRESS LTD
4TH FLOOR, ELEGANCE TOWER,
NON HIERARCHICAL COMMERCIAL CENTRE,
PLOT NO.8, JASOLA DISTRICT CENTRE</td>
            <td>1860 233 1234</td>
            <td>110076</td>
        </tr>
        <tr>
            <th scope="row">7</th>
            <td>HYDERABAD</td>
            <td>ZIPMENT EXPRESS LTD
H.NO.1-8-450/1/a/159 & 160
1ST FLOOR
VICTORIA CASTLE
PRAKASH NAGAR
BEGUMPET</td>
            <td>1860 233 1234</td>
            <td>500016</td>
        </tr>
        <tr>
            <th scope="row">8</th>
            <td>MUMBAI</td>
            <td>ZIPMENT EXPRESS LTD
BLUE DART CENTRE
SAHAR AIRPORT ROAD
ANDHERI EAST</td>
            <td>1860 233 1234</td>
            <td>400099</td>
        </tr>
    </tbody>
    <!--Table body-->

</table>
<!--Table-->
                </div>
                 </div>
             </div>
    </main>
    <br/>
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

