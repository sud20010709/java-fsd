<%@ page import="main.java.model.Booking" %>
<%@ page import="main.java.model.Search" %>
<%
    Booking.passenger_name = request.getParameter("pname");
    Booking.passenger_email= request.getParameter("email");
    Booking.passenger_phone= request.getParameter("phone");
    if (Booking.passenger_name.equals("")
            || Booking.passenger_email.equals("")
            || Booking.passenger_phone.equals("")) {
        out.println("Please enter valid passenger details");
    }
    else {
%>
<!DOCTYPE html>
<html>
<head>
   
    <title>Payment Details - FlyAway Airlines</title>
    </head>

<body>
    <a href="${pageContext.request.contextPath}/index.jsp">FlyAway</a>
        <a href="${pageContext.request.contextPath}/login.jsp">Admin Login</a>

                    <h1 align="center" style="color:black;"><b>Checkout</b></h1>
                    <p align="center" style="color:black;"><span><strong>Enter Payment Details</strong></span></p><br>
 
               <form action="${pageContext.request.contextPath}/thank-you.jsp" method="post" >
                 
                       <label for="card_details">Name on Card</label>
                       <input type="text" name="name_on_card" placeholder="Enter Name on Card">
                
                       <label for="card_details">Card Number</label>
                       <input type="number"  name="card_details" placeholder="Enter Card Number">
             
                   <br>
                   <p align="left"><span><strong>Total fare = <br> <%=Booking.ticket_price%> X <%=Search.persons%> persons = Rs.<%=Search.persons*Booking.ticket_price%></strong></span></p>
                   <button type="submit"  value="Submit">Confirm Payment</button>
               </form>
         
</html>
<%
    }
%>