<%@page import="java.sql.*"%>
<%@ page import="main.java.model.Search" %>
<%
    String driverName = "com.mysql.cj.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String dbName = "flyaway";
    String userId = "root";
    String password = "Ksmthy@114";
    String query = Search.getQuery();
    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
   
    <title>Search Results - FlyAway Airlines</title>
    
</head>

<body>
    <a href="${pageContext.request.contextPath}/index.jsp">FlyAway</a>
        <a href="${pageContext.request.contextPath}/login.jsp" >Admin Login</a>
 
    <h2 align="center"><span><strong>Search Results</strong></span></h2>
    <p align="center"><span><strong>
        Showing available flights from <%=Search.source%> to  <%=Search.destination%> <br>
        Date of travel : <%=Search.date%> (<%=Search.date%>)  <br>
        No of travellers :  <%=Search.persons%>  <br>
    </p>
    <table>
        <thead>
        <tr>
            
            <th scope="col">Flight number</th>
            <th scope="col">Flight name</th>
            <th scope="col">Source</th>
            <th scope="col">Destination</th><th scope="col">Date of travel</th>
             <th scope="col">Ticket Price</th>
            <th scope="col">Select</th>
        </tr>
        </thead>
        <tbody>
        <br><p align="center"><span><strong>Select a flight</strong></span></p><br>
        <%
            try{
                connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                statement=connection.createStatement();
                resultSet = statement.executeQuery(query);
                while(resultSet.next()){
        %>
        <tr>
            <td><%=resultSet.getString("flight_id") %></td>
            <td><%=resultSet.getString("name") %></td>
            <td><%=resultSet.getString("source") %></td>
            <td><%=resultSet.getString("destination") %></td>  <td><%=resultSet.getString("date_of_travel") %></td>
             <td><%=resultSet.getInt("ticket_price") %></td>
            <td>
                <form action="${pageContext.request.contextPath}/booking-details.jsp" method="post">
                    <input type="hidden" name="name" value="<%=resultSet.getString("name")%>">
                    <input type="hidden" name="ticket_price" value="<%=resultSet.getString("ticket_price")%>">
                    <input type="hidden" name="flight_id" value="<%=resultSet.getString("flight_id")%>">
                    <input type="submit" value="Book This Flight">
                </form>
            </td>
        </tr>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        </tbody>
    </table>
</body>
</html>