<%-- 
    Document   : code
    Created on : Oct 18, 2015, 4:16:54 PM
    Author     : Grigoris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Code</title>
        <style>
        label { display: inline-block; width: 140px; text-align: right; }​
        </style>
    </head>
    <body style="background-color:lightgrey">
        <img src="ATHENIZER.png"><br>
        <div>
            <center style="margin-top: 10%">
                <form name="buy" method="post" action="code_submit.jsp">
                    <label style="text-align: left;">Your code here</label><br><br>
                    <input type="text" name="num" id="name">

                    <input type="submit" value="send">
                </form>
            </center>
        </div>
    </body>
</html>
