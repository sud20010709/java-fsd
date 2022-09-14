<%@ page import="main.java.model.Booking" %>
<%
    Booking.flight_booking_id = request.getParameter("flight_id");
    Booking.ticket_price = Integer.parseInt(request.getParameter("ticket_price"));
    Booking.flight_name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Booking Details - FlyAway Airlines</title>
</head>

<body>

    <a href="${pageContext.request.contextPath}/index.jsp">FlyAway</a>
        <a href="${pageContext.request.contextPath}/login.jsp">Admin Login</a>

                    <h1 align="center" style="color:black;"><b>Booking Details</b></h1>
                    <p align="center" style="color:black;"><span><strong>Enter Passenger Details</strong></span></p><br>

                <form action="${pageContext.request.contextPath}/payment.jsp" method="post">
                        <label for="pname">Passenger Name</label>
                        <input type="text" name="pname" placeholder="Enter name of the/any passenger(s)">
                    
                        <label for="pname">Address</label>
                        <input type="text"  name="pname" placeholder="Home address">
                    
                        <label for="pname">Age</label>
                        <input type="text"  name="pname" placeholder="Age">
                 
                        <label for="email">Email address</label>
                        <input type="email" name="email" placeholder="Enter email">
                  
                        <label for="phone">Phone</label>
                        <input type="text"  name="phone" placeholder="Enter phone number">
                    
                    <label for="source">Personal Id</label>
                    <select  name="source">
                        <option value="Aadhar card">Aadhar card</option>
                        <option value="SSN">SSN</option>
                        <option value="Passport">Passport</option>
                        <option value="Voter ID">Voter ID</option>
                        <option value="Driving license">Driving license</option>
                    </select>
                    <label for="enterno">Enter No</label>
                        <input type="text"  name="enterno" placeholder="Enter No">
                 
                    <br>
                    <button type="submit" value="Submit">Payment</button>
                </form>
</body>
</html>