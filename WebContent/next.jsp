<%@ page import="java.util.*" %>

<%
LinkedHashMap<String,String> m=new LinkedHashMap<String,String>();
m.put("fname",request.getParameter("fname"));

m.put("lname",request.getParameter("lname"));
m.put("father_name",request.getParameter("father_name"));
m.put("mother_name",request.getParameter("mother_name"));
m.put ("dob",request.getParameter("dob"));
m.put("age",request.getParameter("age"));
m.put("contact",request.getParameter("contact"));
m.put("email",request.getParameter("email"));
m.put("gender",request.getParameter("gender"));
m.put("language",request.getParameter("language"));
m.put("nationality",request.getParameter("nationality"));
m.put("address",request.getParameter("address"));
m.put("carrier",request.getParameter("carrier"));
m.put("strength",request.getParameter("strength"));
//out.println(m.get("strength"));
session.setAttribute("first",m);
response.sendRedirect("next.html");
%>
