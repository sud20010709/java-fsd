<%@ page import="main.java.model.Search" %>
<%@ page import="main.java.model.Booking" %>
<%
    Booking.name_on_card = request.getParameter("name_on_card");
    Booking.card_details = request.getParameter("card_details");
    if (Booking.name_on_card.equals("") || Booking.card_details.equals("")) {
        out.println("Please enter valid card details");
    }
%>

<!DOCTYPE html>
<html>
<head>
    
    <title>Thank You - FlyAway Airlines</title>
    
</head>

<body>

    <a href="${pageContext.request.contextPath}/index.jsp" >FlyAway</a>
     <a href="${pageContext.request.contextPath}/login.jsp" >Admin Login</a>

        <h2 align="center"><span><strong>Thank You</strong></span></h2>
        
        <p align="center"><span><strong>Your ticket has been booked. The summary/details are as follows</strong></span></p>
        <p><button onclick="window.print()" >Print Ticket</button></p>
        <br>
        <h3>Ticket Summary</h3>
        <h4><strong><%=Search.source%> to <%=Search.destination%> | <%=Search.date%></strong></h4>
        <p align="left"><%=Booking.flight_booking_id%> - <%=Booking.flight_name%> (Travellers <%=Search.persons%>)</p><br>
        <br>
        <h3><strong>Passenger Summary</strong></h3>
        <h3>Booking Name-<%=Booking.passenger_name%> | Email- <%=Booking.passenger_email%> | Phone- <%=Booking.passenger_phone%></h3>
        <br>
        <h3><strong>Payment Summary</strong></h3>
        <h4>Payment By-<%=Booking.name_on_card%> | Card No- <%=Booking.card_details%></h4><br>
        <h2 align="right"><strong>Total Paid- Rs.<%=Search.persons*Booking.ticket_price%></strong></h2><br><br>
  
</body>
</html>