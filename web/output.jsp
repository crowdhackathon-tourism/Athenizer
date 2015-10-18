<%-- 
    Document   : output
    Created on : Oct 17, 2015, 3:54:07 PM
    Author     : Grigoris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Output</title>
    </head>
    <body style="background-color:lightgrey">
        <img src="ATHENIZER.png"><br>
        <%
            String age = "", sex = "", disability = "", budget = "", season = "", interest = "", revisited = "", eating="", people = "", arrival = "", departure = "";
            age = request.getParameter("_age");
            sex = request.getParameter("_sex");
            disability = request.getParameter("_disability");
            budget = request.getParameter("_budget");
            season = request.getParameter("_season");
            interest = request.getParameter("_interest");
            revisited = request.getParameter("_revisited");
            eating = request.getParameter("_eating");
            people = request.getParameter("_people");
            arrival = request.getParameter("_arrival");
            departure = request.getParameter("_departure");
        %>

        <h1>Build your schedule!</h1>
    <p1>1) Take suburban railway at 11:00 to Syntagma Sq</p1></p1> <input type="button" value="new" id="alt"/><br><br>
    <p1>2) Change to Red Line (direction Elliniko) and arrive at Acropolis station at 12:15</p1><input type="button" value="new"/><br><br>
    <p1>3) Check in at Hostel at 12:20</p1><input type="button" value="new" id="alt"/><br><br>
    <p1>4) At 13:00 start visit to Acropolis Museum until 15:00 (includes launch)</p1><input type="button" value="new"/><input type="button" value="maps" onclick="window.open('maps.jsp')"><br><br>
    <p1>5) At 15:15 take bus #550 to Flisvos waterfront</p1><input type="button" value="new"/><br><br>
    <p1>6) At 15:55 arrive at Flisvos and locate "Veliero" coffee shop</p1><input type="button" value="new"/><br><br>
    <p1>7) Time to enjoy an iced coffee and also the sea view</p1><input type="button" value="new"/><br><br>
    <p1>8) At 17:30 take bus ... to Divani Appollon hotel</p1><input type="button" value="new"/><br><br>
    <p1>9) At 18:15 join the "Scooterise Riviera Tour" for 3,5 hrs and enjoy the sunset</p1><input type="button" value="new"/><br><br>
    <p1>10) At 22:00 take bus ... from Divani Appollon hotel back to hostel</p1><input type="button" value="new"/><br><br>
    <p1>11) At 22:50 arrive at hostel</p1><input type="button" value="new"/><br><br>
    <p1>12) At 23:15 take the metro from Acropolis station to Megaro Mousikis station (change to Blue metro line at Syntagma station)</p1><input type="button" value="new"/><br><br>
    <p1>13) Walk for 300 mts to "Kalamaki mou" souvlaki store!</p1><input type="button" value="new"/><br><br>
    <p1>14) Enjoy 2 chicken wrapped souvlakis</p1><input type="button" value="new"/><br><br>
    <p1 id="pText">15) Walk for 20 mts to the Loras bar</p1> <input type="button" value="new" id="alt" onclick="changeText('15) Walk for 20 mts to the Kyrios bar');"/><br><br>
    <p1>16) Enjoy any coctail (all priced at 8 euros)</p1><input type="button" value="new"/><br><br>
    <p1>17) Andranos' taxi is waiting for you downstairs!</p1><input type="button" value="new"/><br><br>
    <p1>18) Arrive at hostel for the night</p1><input type="button" value="new"/><br><br>

<script>
    function changeText(text) {
        document.getElementById('pText').innerHTML = text;
    }
</script>
<form name="buyIt" method="post" action="buy.jsp">
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
    
    <input type="submit" value="buy it now">
</form>
</body>
</html>
