package com.example.misc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	resp.setContentType("text/html");
    
    		
    	
    	
    	//invalidate the session if exists
    	HttpSession hs = req.getSession(false);
    	
    	if(hs != null){
    		
    		hs.invalidate();
    		System.out.print("Session False");
    		
    		
    		
    	}
    	resp.sendRedirect("login.jsp");
    }

}