<%@page import="main.java.servlets.Login"%>
<html>
<head>
    
    <title>Change Password</title>
    
</head>
<body>

    <a href="${pageContext.request.contextPath}/index.jsp" >FlyAway</a>
        <a href="${pageContext.request.contextPath}/login.jsp" > Admin Login</a>

        <h1>Password Change</h1>
            <%
            if (Login.isLoggedIn) {
            %>
                <form action="change-password" method="post">
              
                        <label >Email address : admin@flyaway.com</label>
                   
                        <label for="inputPassword">New Password</label>
                        <input type="password" name="passwordEntered" placeholder="Enter a new password">
                        
                    <button type="submit" >Change Password</button>
                </form>
            <%
            }
            else {
                out.print("You must Login first");
            }
            %>
</body>
</html>