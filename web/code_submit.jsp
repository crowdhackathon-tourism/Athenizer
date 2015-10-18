<%-- 
    Document   : code_submit
    Created on : Oct 18, 2015, 4:39:41 PM
    Author     : Grigoris
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Code_submit</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            String DB = "jdbc:mysql://localhost:3306/citybreak?user=root";
            Connection myConnection = DriverManager.getConnection(DB);
            Statement SMT = myConnection.createStatement();
            request.setCharacterEncoding("UTF-8");
            
            String code = request.getParameter("number");
            String number = "";
            String sql1 = "SELECT custno from users where custno = '" + code +"'";
            ResultSet rs= SMT.executeQuery(sql1);
            Boolean found;
            found = rs.first();
            String skata = "";

            response.sendRedirect("prog_desplay.jsp");

          
            SMT.close();
            myConnection.close();
        %>
</body>
</html>