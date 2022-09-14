<%@page import="java.sql.*"%>
<%@page import="main.java.servlets.Login"%>

<%
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "flyaway";
String userId = "root";
String password = "Ksmthy@114";
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
    <title>FlyAway Airlines</title>
    
</head>

<body>
    <a href="${pageContext.request.contextPath}/index.jsp"">FlyAway</a>
    <a href="${pageContext.request.contextPath}/login.jsp"> Admin Login</a>

<%
    if (Login.isLoggedIn) {
%>
    <h2 align="center"><b>Admin Dashboard</b></h2>
    <p align="center"><span><strong>You are LoggedIn as : <%=Login.email%>. Your Password is : <%=Login.password%></strong></span></p><br>
    
            <form method="post" action="${pageContext.request.contextPath}/change-password.jsp">
                <button type="submit" >Change Password</button>
            </form>
            <form method="post" action="${pageContext.request.contextPath}/search-portal.jsp">
                <button type="submit">Search Flights</button>
            </form>
            <form method="post" action="${pageContext.request.contextPath}/login.jsp">
                <button type="submit">Logout</button>
            </form>
        <br>

            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th scope="col">Flight ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Source</th>
                    <th scope="col">Destination</th>
                    <th scope="col">Date of travel</th>
                    <th scope="col">Ticket Price</th>
                </tr>
                </thead>
                <tbody>
                
                <h1 align="center">Flight Details</h1>
                <%
                    try{
                        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                        statement=connection.createStatement();
                        String sql ="SELECT * FROM flight";
                        resultSet = statement.executeQuery(sql);
                        while(resultSet.next()){
                %>
                <tr>
                    <td><%=resultSet.getString("flight_id") %></td>
                    <td><%=resultSet.getString("name") %></td>
                    <td><%=resultSet.getString("source") %></td>
                    <td><%=resultSet.getString("destination") %></td>
                    <td><%=resultSet.getString("date_of_travel") %></td>
                    <td><%=resultSet.getString("ticket_price") %></td>
                </tr>
                <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    else {
                        out.print("You must Login first");
                    }
                %>
                </tbody>
            </table>
</body>
</html>