package com.jvm.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.RequestDispatcher;


@WebServlet("/api/c5test")
public class TestServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Process your form data or logic here
        // For example, you can perform some action and set a message
        String message = "Test Servlet: Do Post";
        request.setAttribute("message", message);

        // Forward the request to the JSP page
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/pages/homework3/index.jsp");
        dispatcher.forward(request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, 
            HttpServletResponse response)
            throws ServletException, IOException {

    	String message = "Test Servlet: Do Get";
        request.setAttribute("message", message);

        // Forward the request to the JSP page
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/pages/homework3/index.jsp");
        dispatcher.forward(request, response);
    }    
}