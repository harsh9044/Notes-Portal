package com.example.controller;

import java.io.IOException;
import javax.servlet.http.Cookie;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.dao.Dao;

import com.example.model.User;

public class UserLogin extends HttpServlet 
{

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


String roll=req.getParameter("roll1");
String pass=req.getParameter("pass1");



User u=new User();

u.setRoll(roll);

u.setPass(pass);
		try{
			PreparedStatement ps1=Dao.getCon().prepareStatement("SELECT roll,pass FROM student where roll=? and pass=? ");
			ps1.setString(1,roll);
			ps1.setString(2,pass);
			ResultSet rs=ps1.executeQuery();
			
		 while(rs.next()){
		HttpSession hs=req.getSession();
		hs.setAttribute("user", u);
		hs.setMaxInactiveInterval(30*60);
			resp.sendRedirect("downloadpag.jsp");
		return;}
		resp.sendRedirect("wrong.html");
		return;
		}
		catch (Exception e) {
			System.out.println(e);
		}
		}}
