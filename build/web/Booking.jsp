<%-- 
    Document   : Booking
    Created on : Mar 15, 2018, 10:35:30 AM
    Author     : Ashitosh
--%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import ="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> Book A Pickup</title>
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
    <script>
        function checkDate(){
            var dateString = document.getElementById('date-picker-example').value;
            var myDate = new Date(dateString);
            var today = new Date();
            if ( myDate < today ) { 
            alert("You cannot enter a date in the Past!");
        }
    }
        
    </script>
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
                        
                        <li class="nav-item ">
                            <% if (session.getAttribute("userid") == null) { %>
                            <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                            <% } else {%>
                            <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                            <%}%>
                        </li>
                        
                        <li class="nav-item active">
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
                         <form class="form-inline" action="Tracking.jsp">
                            <input class="form-control mr-sm-2 mr-2" type="text" placeholder="Enter shipment no">
                            <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-search" aria-hidden="true"></i>search</button>

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
                    <h4 class="card-title"><strong>Courier Booking</strong></h4>
                    <h5 class="indigo-text"><strong>Editor</strong></h5>

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
            <p><b>Schedule a pickup (only for registered users)</b></p>

            <p>Online "Schedule-a-pickup" service is designed for added speed, convenience and flexibility in logging your pickup requirements. Schedule-a-pickup service allows you to register a pickup online for all services that require a door pickup. This service is available for locations serviced by Blue Dart. Currently, this service is only available from Kolkata, Delhi, Mumbai, Bangalore and Chennai - Mondays to Saturdays.</p>


            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                Book A Pickup Now
            </button>

            <!-- Modal -->
            
            
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Schedule-a-pickup</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="Booking1.jsp">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="formGroupExampleInput2">Location</label>
                                            <input type="text" class="form-control form-control-sm" name="Location" id="formGroupExampleInput1" disabled="true" required required size="30" maxlength="30" 
       style="text-transform:uppercase">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="formGroupExampleInput2">Customer Code</label>
                                            <input type="text" class="form-control" id="formGroupExampleInput2" name="Customer_Code" disabled="true" value="<%= session.getAttribute("code") %>" required/>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Token No</label>
                                            <input type="text" class="form-control" id="formGroupExampleInput3" name="Token" disabled="true" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-8 col-md-8">
                                        <div class="form-group">
                                            <label for="formGroupExampleInput2">Pickup Address</label>
                                            <input type="text" class="form-control" name="Address" id="formGroupExampleInput4" disabled="true" required style="height: 80px;text-transform:uppercase;" required size="80" maxlength="80">
                                        </div>
                                    </div>
                                    <div class="col-4 col-md-4">
                                        <label for="pincode">Pincode</label>
                                        <input type="text" class="form-control" name="Pincode1" id="pincode" disabled="true" required pattern="[0-9]{6}" title="Enter 6 digit Zip code">
                                    </div>
                                    <div class="col-8 col-md-8">
                                        <div class="form-group">
                                            <label for="destination">Destination Address</label>
                                            <input type="text" class="form-control" name="Address1" id="destination" disabled="true" required style="height: 80px;text-transform:uppercase;" required size="80" maxlength="80">
                                        </div>
                                    </div>
                                    <div class="col-4 col-md-4">
                                        <label for="formGroupExampleInput2">Pincode</label>
                                        <input type="text" class="form-control" name="Pincode" id="formGroupExampleInput5" disabled="true" required pattern="[0-9]{6}" title="Enter 6 digit Zip code">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label for="formGroupExampleInput2">Contact No</label>
                                            <input type="text" class="form-control" name="Contact1" id="formGroupExampleInput6" disabled="true" required pattern="[789][0-9]{9}" title="Phone number with 7-9 and remaing 9 digit with 0-9">
                                        </div>     
                                    </div>
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label for="formGroupExampleInput2">Enter Alternate Contact </label>
                                            <input type="text" class="form-control" name="Contact2" id="formGroupExampleInput7" disabled="true" required pattern="[789][0-9]{9}" title="Phone number with 7-9 and remaing 9 digit with 0-9">
                                        </div>                                        
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-3">
                                        <div class="form-group">
                                            <label for="formGroupExampleInput2">Total Pieces</label>
                                            <input type="number" class="form-control" name="Pieces" id="formGroupExampleInput8" disabled="true" required>
                                        </div> 
                                    </div>   
                                    <div class="col-3">
                                        <div class="form-check mb-4">                                                                                                                                       
                                            <input class="form-check-input" type="radio" name="services" id="exampleRadios1" value="Domestic" checked disabled="true">
                                            <label class="form-check-label" for="exampleRadios1">
                                                Domestic
                                            </label>
                                        </div>
                                        <div class="form-check mb-4">
                                            <input class="form-check-input" type="radio" name="services" id="exampleRadios2" value="Dart Apex" disabled="true">
                                            <label class="form-check-label" for="exampleRadios2">
                                                Dart Apex
                                            </label>
                                        </div>
                                        <div class="form-check mb-4">
                                            <input class="form-check-input" type="radio" name="services" id="exampleRadios3" value="Dart Surfaceline" disabled="true">
                                            <label class="form-check-label" for="exampleRadios3">
                                                Dart Surfaceline
                                            </label>
                                        </div>
                                        <div class="form-check mb-4">
                                            <input class="form-check-input" type="radio" name="services" id="exampleRadios4" value="International" disabled="true">
                                            <label class="form-check-label" for="exampleRadios4">
                                                International
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <label>Pickup Date</label>
                                        <div class="md-form">
                                            <input type="date" id="date-picker-example" name="Pickup_Date" class="form-control" disabled="true" onblur="checkDate()" required>

                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <label>Pickup Ready Time</label>
                                        <div class="md-form">
                                            <input type="time" id="input_starttime" name="Pickup_Time" class="form-control" disabled="true" onfocus="enterTime()" required>

                                        </div>
                                    </div>
                                </div>
                            
                            <div class="modal-footer">
                               
                                <button type="button" class="btn btn-primary" id="dis1" onclick="enable()">AddPickup</button>  
           
                            <button type="submit" class="btn btn-success">Book Courier</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                        
                            
                            </div>
                                <script>
                                function enable(){
                                    document.getElementById("formGroupExampleInput1").disabled = false;
                                   // document.getElementById("formGroupExampleInput2").disabled = false;
                                    document.getElementById("formGroupExampleInput4").disabled = false;
                                    document.getElementById("formGroupExampleInput5").disabled = false;
                                    document.getElementById("formGroupExampleInput6").disabled = false;
                                    document.getElementById("formGroupExampleInput7").disabled = false;
                                    document.getElementById("formGroupExampleInput8").disabled = false;
                                    document.getElementById("exampleRadios1").disabled = false;
                                    document.getElementById("exampleRadios2").disabled = false;
                                    document.getElementById("exampleRadios3").disabled = false;
                                    document.getElementById("exampleRadios4").disabled = false;
                                    document.getElementById("date-picker-example").disabled = false;
                                    document.getElementById("input_starttime").disabled = false;
                                     document.getElementById("destination").disabled = false;
                                    document.getElementById("pincode").disabled = false;
                                    document.getElementById("dis1").disabled = true;
                                    document.getElementById("dis2").disabled = true;
                                     
                                }
                                
                            </script>
                            
                            <script>
                                function enable2(){
                                    
                                     document.getElementById("formGroupExampleInput1").disabled = true;
                                    document.getElementById("formGroupExampleInput2").disabled = true;
                                    document.getElementById("formGroupExampleInput3").disabled = false;
                                    document.getElementById("formGroupExampleInput4").disabled = true;
                                    document.getElementById("formGroupExampleInput5").disabled = true;
                                    document.getElementById("formGroupExampleInput6").disabled = true;
                                    document.getElementById("formGroupExampleInput7").disabled = true;
                                    document.getElementById("formGroupExampleInput8").disabled = true;
                                    document.getElementById("exampleRadios1").disabled = true;
                                    document.getElementById("exampleRadios2").disabled = true;
                                    document.getElementById("exampleRadios3").disabled = true;
                                    document.getElementById("exampleRadios4").disabled = true;
                                    document.getElementById("date-picker-example").disabled = true;
                                    document.getElementById("input_starttime").disabled = true;
                                    document.getElementById("dis1").disabled = true;
                                }
                            </script>
                            </form>
                                                   </div>
                        </div>
                </div>
                    
                
            </div>
            
                
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

