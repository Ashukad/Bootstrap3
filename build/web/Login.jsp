<%-- 
    Document   : Login
    Created on : Mar 14, 2018, 3:12:04 PM
    Author     : Ashitosh
--%>
<%@ page import ="java.sql.*" %>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Zipment</title>
    </head>
    <body>
        <%
    String userid = request.getParameter("name1");    
    String pwd = request.getParameter("password1");
    String admin_login=request.getParameter("admin");
    if (userid.equals("admin") && pwd.equals("admin") && admin_login.equals("Login As Administrator")) {
            response.sendRedirect("AdminPage.html");
        }
    else{
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=Register","sa","faculty");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from Registers    where Name='" + userid + "' and Password='" + pwd + "'");
    if (rs.next()){
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("Error.jsp");
    }
}
%>    
    </body>
</html>
