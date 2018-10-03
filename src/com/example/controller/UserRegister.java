package com.example.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.dao.UserDao;
import com.example.model.User;

public class UserRegister extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
resp.setContentType("text/html");
PrintWriter pw=resp.getWriter();

String name=req.getParameter("fname");
String email=req.getParameter("email");
String roll=req.getParameter("roll");
String mob=req.getParameter("mob");
String pass=req.getParameter("pass");
String gender=req.getParameter("gender");


User u=new User();
u.setName(name);
u.setEmail(email);
u.setRoll(roll);
u.setMob(mob);
u.setPass(pass);
u.setGender(gender);


UserDao ud=new UserDao();
int i=ud.insert(u);
if(i>0){
	pw.print("<center/>Successfully Registered");
}else{
	pw.print("<center/>Registration Failed");
}
req.getRequestDispatcher("register.jsp").include(req, resp);
	}
	
	
}
