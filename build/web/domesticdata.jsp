<%-- 
    Document   : domesticdata
    Created on : Apr 22, 2018, 8:37:02 PM
    Author     : Ashitosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String pin=request.getParameter("find");
            if(pin.equals("400016") || pin.equals("Mumbai")){
                    response.sendRedirect("Add1.jsp");
            }
            
            if(pin.equals("110076") || pin.equals("Delhi")){
                    response.sendRedirect("Add2.jsp");
            }
            if(pin.equals("700071") || pin.equals("Kolkata")){
                    response.sendRedirect("Add3.jsp");
            }
            
        %>
    </body>
</html>
