<%@ page import="java.util.*" %>

<%
LinkedHashMap<String,String> m1=new LinkedHashMap<String,String>();


m1.put("high_school_name",request.getParameter("high_school_name"));
m1.put("high_board",request.getParameter("high_board"));
m1.put("high_percent",request.getParameter("high_percent"));
m1.put ("inter_school_name",request.getParameter("inter_school_name"));
m1.put("inter_board",request.getParameter("inter_board"));
m1.put("inter_percent",request.getParameter("inter_percent"));
m1.put("graduation_college_name",request.getParameter("graduation_college_name"));
m1.put("graduation",request.getParameter("graduation"));
m1.put("university",request.getParameter("university"));
m1.put("graduation_percent",request.getParameter("graduation_percent"));
m1.put("employer",request.getParameter("employer"));
m1.put("designation",request.getParameter("designation"));
m1.put("joining_date",request.getParameter("joining_date"));
m1.put("leaving_date",request.getParameter("leaving_date"));
m1.put("working",request.getParameter("working"));
m1.put("experience",request.getParameter("experience"));

session.setAttribute("second",m1);
response.sendRedirect("next1.html");

%>