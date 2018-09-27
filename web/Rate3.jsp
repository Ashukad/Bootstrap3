<%-- 
    Document   : Add1
    Created on : Apr 22, 2018, 8:46:41 PM
    Author     : Ashitosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
   <script type="text/javascript">
    $(window).on('load',function(){
        $('#exampleModal').modal('show');
    });
</script>
   <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            
            <div class="modal-header">
                <p class="modal-title" id="exampleModalLabel"><b>Booking&nbsp;Details</b></p>                  
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body pb-5">
                <form action="Payonline.jsp">
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8">
                        <div class="row">
                            <div class="col-md-8" style="border: 1px groove black" ><b>Origin</b> </div>
                    <div class="col-md-4" style="border: 1px groove black" ><label><b><%= (String)session.getAttribute("origin") %></b></label></div>
                        </div>
                        <div class="row" >
                            <div class="col-md-8" style="border: 1px groove black"><b>Destination</b></div>
                            <div class="col-md-4" style="border: 1px groove black"><b><%= (String)session.getAttribute("destination") %></b><label></label></div>                            
                        </div>
                        <div class="row" >
                            <div class="col-md-8" style="border: 1px groove black"><b>Service</b></div>
                            <div class="col-md-4" style="border: 1px groove  black"><label><b><%= (String)session.getAttribute("service") %></b></label></div>                            
                        </div>
                        <div class="row">
                            <div class="col-md-8"  style="border: 1px groove black"><b>Rate</b></div>
                            <% 
                                String cost=(String)session.getAttribute("cost");
                                String weight=(String)session.getAttribute("weight");
                                int c=Integer.parseInt(cost);
                                int w=Integer.parseInt(weight);
                                int m=c*w;
                                session.setAttribute("mul", Integer.toString(m));
                            %>
                            <div class="col-md-4"  style="border: 1px groove black"><label><b><%= (String)session.getAttribute("mul") %></b><p>Rs</p></label></div>                            
                        </div>
                                                
                    </div>
                </div>
               <div class="modal-footer">
                   <button type="submit" class="btn btn-primary">Payment</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                
            </div> 
                     </form>
            </div>
           
           
        </div>
    </div>
    
</div>
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
