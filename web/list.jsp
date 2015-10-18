<%-- 
    Document   : list
    Created on : Oct 17, 2015, 9:03:03 PM
    Author     : Grigoris
--%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            String DB = "jdbc:mysql://localhost:3306/citybreak?user=root";
            Connection myConnection = DriverManager.getConnection(DB);
            Statement SMT = myConnection.createStatement();
            request.setCharacterEncoding("UTF-8");
            
            String firstName="", lastName="", email="", creditCard="", age="", sex="", disability="", budget="", season="", interest="", revisited="", eating="", people="", arrival="", departure="";
            firstName = request.getParameter("firstName");
            lastName = request.getParameter("lastName");
            email = request.getParameter("email");
            creditCard = request.getParameter("creditCard");
            age=request.getParameter("age");
            sex=request.getParameter("sex");
            disability=request.getParameter("disability");
            budget=request.getParameter("budget");
            season=request.getParameter("season");
            interest=request.getParameter("interest");
            revisited=request.getParameter("revisited");
            eating=request.getParameter("eating");
            people=request.getParameter("people");
            arrival=request.getParameter("arrival");
            departure=request.getParameter("departure");
            
            String sql="insert into users(fname,lname,email,credit,age,sex,disability,budget,season,interest,revisited,eating,people,arrival,departure) values ('"+firstName+"','"+lastName+"','"+email+"','"+creditCard+"','"+age+"','"+sex+"','"+disability+"','"+budget+"','"+season+"','"+interest+"','"+revisited+"','"+eating+"','"+people+"','"+arrival+"','"+departure+"')";
            SMT.executeUpdate(sql);
            SMT.close();
            myConnection.close();
            
            
            String result;
            // Recipient's email ID needs to be mentioned.
            String to = email;

            // Sender's email ID needs to be mentioned
            String from = "grigorispap.24@gmail.com";

            // Assuming you are sending email from localhost
            String host = "localhost";

            // Get system properties object
            Properties properties = System.getProperties();

            // Setup mail server
            properties.setProperty("mail.smtp.host", host);

            // Get the default Session object.
            Session mailSession = Session.getDefaultInstance(properties);

            try {
                // Create a default MimeMessage object.
                MimeMessage message = new MimeMessage(mailSession);
                // Set From: header field of the header.
                message.setFrom(new InternetAddress(from));
                // Set To: header field of the header.
                message.addRecipient(Message.RecipientType.TO,
                        new InternetAddress(to));
                // Set Subject: header field
                message.setSubject("This is the Subject Line!");
                // Now set the actual message
                message.setText("This is actual message");
                // Send message
                Transport.send(message);
                result = "Sent message successfully....";
            } catch (MessagingException mex) {
                mex.printStackTrace();
                result = "Error: unable to send message....";
            }
            response.sendRedirect("index.html");
        %>
    </body>
</html>
