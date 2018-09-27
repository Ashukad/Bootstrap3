<%-- 
    Document   : Register
    Created on : Mar 14, 2018, 1:34:49 AM
    Author     : Ashitosh
--%>
  

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
    <sql:setDataSource var="con" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" url="jdbc:sqlserver://localhost:1433;databaseName=Register" user="sa" password="faculty"/>
    <sql:update dataSource="${con}" var="result">
            INSERT INTO Registers VALUES (?,?,?,?,?,?,?);
            <sql:param value="${param.Name}" />
            <sql:param value="${param.Address}" />
            <sql:param value="${param.Location}" />
            <sql:param value="${param.Pincode}" />
            <sql:param value="${param.Mail}" />
            <sql:param value="${param.Mobile}" />
            <sql:param value="${param.Password}" />
    </sql:update>  
      
           <% 
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=Register","sa","faculty");
            Statement stmt=null;
             
        
try {
    
        stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("SELECT * FROM Registers WHERE Customer_Code = (SELECT MAX(Customer_Code) FROM Registers)" );
        
        
      
        
        
       if(rs.next()){
           
           session.setAttribute("code", rs.getString(8));
           session.setAttribute("pwd", rs.getString(7));
           session.setAttribute("name", rs.getString(1));
           //out.println("hey");
       
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
            
            <% 
            
                try{
            String host ="smtp.gmail.com" ;
            String user = "ashudm11@gmail.com";
            String pass = "dimaria10";
            String to = request.getParameter("Mail");
            String from = "ashudm11@gmail.com";
            String subject = "Registration" ;
            String messageText =(String)session.getAttribute("code");
            String pwdText =(String)session.getAttribute("pwd");
            String name=(String)session.getAttribute("name");
            boolean sessionDebug = false;
            Properties props = System.getProperties();

            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.required", "true");

            java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
            Session mailSession = Session.getDefaultInstance(props, null);
            mailSession.setDebug(sessionDebug);
            Message msg = new MimeMessage(mailSession);
            msg.setFrom(new InternetAddress(from));
            InternetAddress[] address = {new InternetAddress(to)};
            msg.setRecipients(Message.RecipientType.TO, address);
            msg.setSubject(subject); msg.setSentDate(new Date());
            msg.setText("Your Customer Code is =" +messageText +"\nYour Login name is"+ name +"\nYour Password is"+ pwdText);

           Transport transport=mailSession.getTransport("smtp");
           transport.connect(host, user, pass);
           transport.sendMessage(msg, msg.getAllRecipients());
           transport.close();
          response.sendRedirect("Thankyou.jsp");
        }catch(Exception ex)
        {
            out.println(ex);
        }
            %>
            
            
    </body>
</html>
