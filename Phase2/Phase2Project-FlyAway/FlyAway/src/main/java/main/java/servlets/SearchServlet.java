package main.java.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.*;

import main.java.model.Search;

import java.io.PrintWriter;
import java.time.*;
import javax.servlet.http.*;

public class SearchServlet extends HttpServlet {

    @Override
    public void service (HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Search.date = req.getParameter("date");
        Search.source = req.getParameter("source");
        Search.destination = req.getParameter("destination");
        Search.persons = Integer.parseInt(req.getParameter("persons"));

        if (Search.date.equals("")) {
            PrintWriter out = resp.getWriter();
            out.println("Please enter Date");
        }
        else {
        	try {
            resp.sendRedirect("search-results.jsp");
        	} catch (Exception ex) {
        		 PrintWriter out = resp.getWriter();
                 out.println("Please enter a valid date");
        	}
        }
    }

}