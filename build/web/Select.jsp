<%-- 
    Document   : Select
    Created on : Mar 18, 2018, 2:54:17 PM
    Author     : Ashitosh
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import = "javax.servlet.RequestDispatcher" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=Register","sa","faculty");
            Statement stmt=null;
             
        
try {
    
        stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("SELECT * FROM Shipment WHERE Token = (SELECT MAX(Token) FROM Shipment)" );
        
        
      
        
        
       if(rs.next()){
           session.setAttribute("addr", rs.getString(2));
           session.setAttribute("token", rs.getString(10));
           session.setAttribute("date", rs.getString(7));
           session.setAttribute("service", rs.getString(9));
           session.setAttribute("pieces", rs.getString(6));
           session.setAttribute("destination", rs.getString(11));
         response.sendRedirect("BookingConfirmation.jsp");       
        //out.println(rs.getString(1)+rs.getString(2)+rs.getInt(3)+rs.getInt(4)+rs.getInt(5)+rs.getInt(6)+rs.getString(7)+rs.getString(8)+rs.getString(9)+rs.getInt(10));     
         }
      
        
}
    catch (SQLException e) {
        System.out.println(e);
    }
    finally {
      stmt.close();
      con.close();
      
        }
        
        %>
    </body>
</html>
