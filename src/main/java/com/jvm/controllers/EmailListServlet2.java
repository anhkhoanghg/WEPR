package com.jvm.controllers;

import java.io.*;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.jvm.models.User;
import com.jvm.data.UserDB;
import com.jvm.data.UserIO;

@WebServlet("/api/c8")
public class EmailListServlet2 extends HttpServlet
{    
    @Override
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {
    	
    	
        String url = "/pages/homework6" + "/index.jsp";
        HttpSession session = request.getSession();
        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }
        
        if (action.equals("join")) {
            url = "/pages/homework6" + "/index.jsp";    
        }
        else if (action.equals("add")) {                
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            // store data in User object and save User object in database
            User user = new User(firstName, lastName, email);
            UserDB.insert(user);
            
            // set User object in request object and set URL
            session.setAttribute("user", user);
            url = "/pages/homework6" + "/thanks.jsp";   
        }
        
        // create the Date object and store it in the request
        Date currentDate = new Date();
        request.setAttribute("currentDate", currentDate);

        // create users list and store it in the session
        String path = getServletContext().getRealPath("/WEB-INF/EmailList.txt");
        ArrayList<User> users = UserIO.getUsers_n(path);
        session.setAttribute("users", users);

        // forward request and response objects to specified URL
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
    }    
    
    @Override
    protected void doGet(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {
        doPost(request, response);
    }    
}