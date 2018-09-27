<%-- 
    Document   : Booking1
    Created on : Mar 16, 2018, 10:31:16 PM
    Author     : Ashitosh
--%>
<%@page import="java.beans.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <sql:setDataSource var="con" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" url="jdbc:sqlserver://localhost:1433;databaseName=Register" user="sa" password="faculty"/>
         <sql:update dataSource="${con}" var="result">
             insert into Shipment values(?,?,?,?,?,?,?,?,?,?)
             <sql:param value="${param.Location}"/>
             <sql:param value="${param.Address}"/>
             <sql:param value="${param.Pincode}"/>
             <sql:param value="${param.Contact1}"/>
             <sql:param value="${param.Contact2}"/>
             <sql:param value="${param.Pieces}"/>
             <sql:param value="${param.Pickup_Date}"/>
             <sql:param value="${param.Pickup_Time}"/>
             <sql:param value="${param.services}"/>
             <sql:param value="${param.Address1}"/>
         </sql:update>
             <% response.sendRedirect("Select.jsp"); %>
    </body>
</html>
