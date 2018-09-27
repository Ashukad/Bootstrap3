<%-- 
    Document   : Signup
    Created on : Mar 15, 2018, 10:39:58 AM
    Author     : Ashitosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Signup | Zipments</title>
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
           <li class="ml-5 white-text text-center"><h5 style="margin: 0px; padding: 0px">Welcome <%=session.getAttribute("userid")%></h5></li>
           <li ><a href="logout.jsp" class="white-text ml-4 " style="margin: 0px; padding: 0px" ><i class="fa fa-sign-out fa-lg white-text" aria-hidden="true"> SignOut</i></a></li>
           <% } %>
             </ul>
             <!-- Search form -->

         </div>
         <!-- Collapsible content -->
     </div>
 </nav>
 <!--/.Navbar-->





<!--Main Section-->

<main class="mt-5">


    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6"><p align="center">
            Register here if you wish to ship regularly through Zipment and wish to facilitate your shipping processes. Our Sales Representative will contact you, after registration, to assist you in the process of registration and explain to you the benefits of our various services.</p>

           <p align="center"> To register, fill out and submit the following details. Your telephone number is mandatory to enable us to get in touch with you.</p>
        </div>
        <div class="col-md-3"></div>
    </div>
    
    <div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6 jumbotron"><!-- Material form register -->
<div class="container">
    <form action="Register.jsp">
    <p class="h4 text-center mb-4">Registration</p>
    <p class="red-text center">*-These are mandatory fields.</p>
    <!-- Material input text -->
    <div class="md-form">
        <i class="fa fa-user prefix grey-text"></i>
        <input type="text" id="materialFormRegisterNameEx" name="Name" class="form-control" onkeyup = "Validate(this)" required size="30" maxlength="30" 
       style="text-transform:uppercase"/>
        <label for="materialFormRegisterNameEx">Your name<span class="red-text">*</span></label>
    </div>
    <!-- Material input address -->
    <div class="md-form">
        <i class="fa fa-address-book prefix grey-text"></i>
        <input type="text" id="materialFormRegisterAddress1Ex" name="Address" class="md-textarea" style="height: 80px;text-transform:uppercase;" required size="80" maxlength="80"/>
        <label for="materialFormRegisterAddress1Ex">Address<span class="red-text">*</span></label>
    </div>

    <!-- Material input Location -->
    <div class="md-form">
        <i class="fa fa-area-chart prefix grey-text"></i>
        <input type="text" id="materialLocationEx" name="Location" class="form-control"  style="text-transform: uppercase;" required maxlength="15" size="15">
        <label for="materialLocationEx">Location<span class="red-text">*</span></label>
    </div>

    <!-- Material input Location -->
    <div class="md-form">
        <i class="fa fa-map-pin prefix grey-text"></i>
        <input type="number" id="materialpincode" name="Pincode" class="form-control" pattern="[0-9]{6}" title="Enter 6 digit Zip code" required minlength="6"/>
        <label for="materialpincode">Pincode<span class="red-text">*</span></label>
    </div>
    <!-- Material input email -->
    <div class="md-form">
        <i class="fa fa-envelope prefix grey-text"></i>
        <input type="email" id="materialFormRegisterEmailEx" name="Mail" class="form-control" required>
        <label for="materialFormRegisterEmailEx">Your email<span class="red-text">*</span></label>
    </div>
    
    <!-- Material input Contact -->
    <div class="md-form">
        <i class="fa  fa-mobile prefix grey-text"></i>
        <input type="text" id="materialFormMobileNo" name="Mobile" class="form-control" pattern="[789][0-9]{9}" title="Phone number with 7-9 and remaing 9 digit with 0-9" required>
        <label for="materialFormMobileNo">Mobile No<span class="red-text">*</span></label>
    </div>
    
    <!-- Material input password -->
    <div class="md-form">
        <i class="fa fa-lock prefix grey-text"></i>
        <input type="password" name="Password" class="form-control" required maxlength="10" onsubmit = "checklength2(this)" id="pass1" pattern=".{4,10}" title="password should have atleast 4-10 characters"/>
        <label for="Password">Your password<span class="red-text">*</span></label>
    </div>

    <!-- Material input email -->
    <div class="md-form">
        <i class="fa fa-exclamation-triangle prefix grey-text"></i>
        <input type="password" name="materialFormRegisterConfirmEx" class="form-control" required id="pass2" onkeyup="val(); return false;"/>
        <label for="materialFormRegisterConfirmEx">Confirm Password<span class="red-text">*</span></label>
        
    </div>
    
    <p class="text-center">
        My  number of shipments per month 
        is around
        <!-- Small input -->
        <span>
        <input class="form-control form-control-sm" type="text">
        </span>
        <div class="text-center mt-4">
            <button class="btn btn-primary" type="submit">Register</button>
        </div>
    </form>
</div>
<!-- Material form register --></div>
<div class="col-md-3"></div>
</div>

                      

</main>
<!--Main Section-->



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
                <p><a href="Time.jsp">Time Definite Delivery</a></p>
            </div>
            <!--/.Second column-->

            <hr class="w-100 clearfix d-md-none">

            <!--Third column-->
            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                <h6 class="title mb-4 font-bold">Useful links</h6>
                <p><a href="Login.html">Your Account</a></p>
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
                <p class="text-center text-md-left grey-text">© 2017 Copyright: <a href="index.html"><strong>TrackDart.com</strong></a></p>
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

<script>
    // validates text only
function Validate(materialFormRegisterNameEx) {
    materialFormRegisterNameEx.value = materialFormRegisterNameEx.value.replace(/[^a-zA-Z-'\n\r.\s]+/g, '');
    //var strength=document.getElementById("txt");
   }
</script>

<script>
    function val(){
    var password = document.getElementById("pass1")
  , confirm_password = document.getElementById("pass2");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
    }
</script>

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