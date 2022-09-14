package main.java.servlets;
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static boolean isLoggedIn = false;
    public static String password = "Admin";
    public static String email = "admin@flyaway.com";

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

        String email = request.getParameter("emailEntered");
        String pass = request.getParameter("passwordEntered");

        if (email.equals(Login.email) && pass.equals(Login.password)){
            isLoggedIn = true;
            out.println("You have LoggedIn");
            response.sendRedirect("admin-dashboard.jsp");
        }
        else {
            isLoggedIn = false;
            out.println("Login Failed : Incorrect email or Password");
        }
        out.close();
		// TODO Auto-generated method stub
	}

}