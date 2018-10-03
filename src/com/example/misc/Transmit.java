package com.example.misc;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.dao.Dao;
import com.example.model.Clr;

/**
 * Servlet implementation class Transmit
 */
@WebServlet("/Transmit")
public class Transmit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Transmit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");


		String crcode=request.getParameter("tablename");
		Clr c=new Clr();
		c.setKey(crcode);
		try{
			PreparedStatement ps1=Dao.getCon().prepareStatement("SELECT * FROM "+crcode+"");
			ResultSet rs=ps1.executeQuery();
			 out.println("<table width='100' border='1' background-color: #4CAF50;color: white;>");
			 out.println("<tr width='100'>");
			 out.println("<th>Click To Download</th>");
			 out.println("</tr>");
			 while(rs.next())
			 {
				 out.println("<tr>");
				 out.println("<td><a href='download.jsp?path="+rs.getString(2)+"'>"+rs.getString(1)+"</a></td>");
				 out.println("</tr>");
			 }
			 out.println("</table>");
			           
				}
		catch(Exception e)
		{
			out.print(e);
		}
		
		
	
	
	
	
	
	
	
	}

}
