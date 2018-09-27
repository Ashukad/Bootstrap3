<%-- 
    Document   : Rate2
    Created on : Apr 22, 2018, 3:57:29 PM
    Author     : Ashitosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String weight=request.getParameter("weight");   
            session.setAttribute("weight",weight);
         String origin = request.getParameter("origin");    
    String destination = request.getParameter("destination");
    String service=request.getParameter("service");
    
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=Register","sa","faculty");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from Price  where origin='" + origin + "' and destination='" + destination +"' and service='" + service + "'");
    if (rs.next()) {
        session.setAttribute("cost",rs.getString(5));
        session.setAttribute("origin",rs.getString(2));
        session.setAttribute("destination",rs.getString(3));
        session.setAttribute("service",rs.getString(4));
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("Rate3.jsp");
    } else {
        out.println("Invalid password");
    }

        %>
    </body>
</html>
