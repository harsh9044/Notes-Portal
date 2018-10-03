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
import com.example.model.Clr;
import com.example.model.User;

public class CrLogin extends HttpServlet 
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


String uid=req.getParameter("uid1");
String key=req.getParameter("key1");



Clr c=new Clr();

c.setUid(uid);

c.setKey(key);
		try{
			PreparedStatement ps1=Dao.getCon().prepareStatement("SELECT id,key FROM clr where id=? and key=? ");
			ps1.setString(1,uid);
			ps1.setString(2,key);
			ResultSet rs=ps1.executeQuery();
			
		while (rs.next()){
		HttpSession hs=req.getSession();
		hs.setAttribute("clr",c);
		hs.setMaxInactiveInterval(30*60);
			resp.sendRedirect("upload.jsp");
		return;}
		resp.sendRedirect("something.html");
		return;
		}
		catch (Exception e) {
			System.out.println(e);
		}
		}}
