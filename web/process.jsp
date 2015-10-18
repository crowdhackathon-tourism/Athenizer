<%-- 
    Document   : process
    Created on : Oct 17, 2015, 3:29:07 PM
    Author     : Grigoris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Process</title>
    </head>
    <body>
        <h1>Process</h1>
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
        
        if(age.equals("18-30")
                && sex.equals("Another")
                && disability.equals("No")
                && budget.equals("Low")
                && season.equals("April-June")
                && interest.equals("Gastronomy")
                && revisited.equals("No")
                && eating.equals("Normal eater")
                && people.equals("Single")
                && arrival.equals("Morning")
                && departure.equals("Night")) {
                    response.sendRedirect("output.jsp?_age="+age+"&_sex="+sex+"&_disability="+disability+"&_budget="+budget+"&_season="+season+"&_interest="+interest+"&_revisited="+revisited+"&_eating="+eating+"&_people="+people+"&_arrival="+arrival+"&_departure="+departure+"");
                }
        else {
            response.sendRedirect("index.html");
        }
            
        %>
    </body>
</html>
