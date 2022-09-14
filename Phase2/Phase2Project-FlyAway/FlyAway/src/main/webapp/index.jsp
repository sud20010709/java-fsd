<%@page import="main.java.servlets.Login"%>
<% Login.isLoggedIn = false; %>
<html>
<head>
    
    <title>Admin - Login FlyAway Airlines</title>
    
</head>
<body>
    <a href="/index.jsp">FlyAway</a>
   <br>
        <a href="login.jsp" > Admin Login</a>

                    <h2 align="center"><b>Login</b></h2>
                    <br>
             
           
                <form action="login" method="post" >
                        <label for="inputEmail" >Email address</label>
                        <input type="email" name="emailEntered"placeholder="Enter email">
                        <br>
                        <br>
                        <br>
                       
                        <label for="inputPassword">Password</label>
                        <input type="password" name="passwordEntered"  placeholder="Password">
                        <br>
                        <br>
                        <br>
                       
                    <button type="submit" value="Submit">Login</button>
                </form>
         
</body>
</html>