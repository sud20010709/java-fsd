<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>FlyAway</title>
   
</head>
<body>

    <a href="${pageContext.request.contextPath}/index.jsp">FlyAway</a>
   
        <a href="${pageContext.request.contextPath}/login.jsp" > Admin Login</a>

                <h2 align="center"><b>FlyAway <br> Ticket Booking</b></h2>
                <br>
    
            <form action="search" >
                    <label for="date">Date of travel (yyyy-MM-dd)</label>
                    <input type="date"   name="date" placeholder="Travel Date">
            
                    <label for="source">Source City</label>
                    <select name="source">
                        <option value="India">India</option>
                        <option value="USA">USA</option>
                        <option value="UK">UK</option>
                    </select>
                    <label for="destination">Destination City</label>
                    <select name="destination">
                        <option value="India">India</option>
                        <option value="USA">USA</option>
                        <option value="UK">UK</option>
                    </select>
             
                    <label for="persons">No of Persons</label>
                    <select class="form-control" id="persons" name="persons">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
          
                <br>
                <button type="submit"value="Submit">Search Flights</button>
            </form>
      
</body>
</html>