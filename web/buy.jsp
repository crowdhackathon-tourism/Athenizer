<%-- 
    Document   : buy
    Created on : Oct 17, 2015, 8:27:39 PM
    Author     : Grigoris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buy</title>
        <style>
        label { display: inline-block; width: 140px; text-align: right; }​
        </style>
    </head>
    <body style="background-color:lightgrey">
        <img src="ATHENIZER.png"><br>
        <%
        String age="", sex="", disability="", budget="", season="", interest="", revisited="", eating="", people="", arrival="", departure="";
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
        %>
        
        <div>
            <center style="margin-top: 10%">
                <form name="buy" method="post" action="list.jsp">
                    <fieldset>
                        <legend>Fill in the form.</legend>
                        
                        <label>Firstname: </label>
                        <input type="text" name="firstName" id="name"><br><br>
                        <label>Lastname: </label>
                        <input type="text" name="lastName" id="name"><br><br>
                        <label>E-mail: </label>
                        <input type="email" name="email" id="email"><br><br>
                        <label>Credit Card: </label>
                        <input type="text" name="creditCard" id="creditCard"><br><br>
                        
                        <input type="hidden" name="age" value="<%=age%>">
                        <input type="hidden" name="sex" value="<%=sex%>">
                        <input type="hidden" name="disability" value="<%=disability%>">
                        <input type="hidden" name="budget" value="<%=budget%>">
                        <input type="hidden" name="season" value="<%=season%>">
                        <input type="hidden" name="interest" value="<%=interest%>">
                        <input type="hidden" name="revisited" value="<%=revisited%>">
                        <input type="hidden" name="eating" value="<%=eating%>">
                        <input type="hidden" name="people" value="<%=people%>">
                        <input type="hidden" name="arrival" value="<%=arrival%>">
                        <input type="hidden" name="departure" value="<%=departure%>">
                        <input type="submit" value="send">
                    </fieldset>
                </form>
            </center>
        </div>
    </body>
</html>
