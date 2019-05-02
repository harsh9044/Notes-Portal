<%@ page import="java.util.*" %>
<%@ page contentType="application/pdf" %>

<%
String file="resume.pdf";
response.setHeader("Content-Disposition", "attachment; filename=\"" + file + "\"");
LinkedHashMap<String,String> m=(LinkedHashMap<String,String>)session.getAttribute("first");
LinkedHashMap<String,String> m1=(LinkedHashMap<String,String>)session.getAttribute("second");
//out.println(m1.get("dob"));
//out.println(m.get("high_board"));

%>
<html>
<head>
<style>
hr { 
    display: block;
    margin-top: 0.5em;
    margin-bottom: 0.5em;
    margin-left: auto;
    margin-right: auto;
    border-style: inset;
    border-width: 1px;
    
} 
table, th, td {
    border: 1px solid black;
}
</style>
</head>
<body>
<center><h1>Resume</h1></center>
<hr>
<br>
<center><h3><i>Personal Info</i></h3></center>
<hr>
<center>
<h4><%=m.get("fname")%> &nbsp; <%=m.get("lname")%><br>
<%=m.get("address")%><br>
Contact:-<%=m.get("contact")%><br>
Mail id:-<%=m.get("email")%><br>
D.O.B:-<%=m.get("dob")%><br>
Languages Known:-<%=m.get("language")%><br></h4>
</center>
<hr>
<br>
&emsp;&ensp;<h3><i>Carrier Objectives</i></h3><br>
<p><h4>&emsp;<%=m.get("carrier")%></h4>
</p>
<hr>
<br>
&emsp;&ensp;

<h3><i>My Strength's</i></h3><br>
<p><h4>&emsp;<%=m.get("strength")%></h4>
</p><hr><br>
<center><h3><i>Education Info</i></h3></center>
<hr>
<table style="width:100%" >
  <tr>
  <th>  </th>
    <th><h3>School/College Name</h3></th>
    <th><h3>Board/University</h3></th> 
    <th><h3>Percentage</h3></th>
  </tr>
  <tr>
    <td><h3>High School</h3></td>
    <h4></h4><td><%=m1.get("high_school_name")%></td>
    <td><%=m1.get("high_board")%></td>
    <td><%=m1.get("high_percent")%></td></h4>
  </tr>
  <tr>
  <td><h3>Inter </h3></td>
  <h4></h4>  <td><%=m1.get("inter_school_name")%></td>
    <td><%=m1.get("inter_board")%></td>
    <td><%=m1.get("inter_percent")%></td></h4>
  </tr>
  <tr>
  <td><h3><%=m1.get("graduation")%></h3></td>
    <h4></h4><td><%=m1.get("graduation_college_name")%></td>
    <td><%=m1.get("university")%></td>
    <td><%=m1.get("graduation_percent")%></td></h4>
  </tr>
</table>
<hr>
<br><center><h3><i>My Experience</i></h3></center><br><hr><br>
&emsp;&ensp;<u><h3><i>Employment details</i></h3></u><br>
<h4><%=m1.get("employer")%><br>
&emsp;Designation:-<%=m1.get("designation")%><br>
&emsp;Experience:-<%=m1.get("experience")%><br>
&emsp;Joining at:-<%=m1.get("joining_date")%>&nbsp;to&nbsp;<%=m1.get("leaving_date")%><br>
&emsp;Working:-<%=m1.get("working")%></h4><br><hr><br>

<center><h3><i>Projects</i></h3></center><br><hr><br>
&emsp;&ensp;<h4><%=request.getParameter("title_of_project")%><br>
&emsp;&ensp;&ensp;Front End:-<%=request.getParameter("front_end")%><br>
&emsp;&ensp;&ensp;Back End:-<%=request.getParameter("back_end")%><br>
&emsp;&ensp;&ensp;Inputs:-<%=request.getParameter("input")%><br>
&emsp;&ensp;&ensp;Outputs:-<%=request.getParameter("output")%><br>
&emsp;&ensp;&ensp;Guide:-<%=request.getParameter("guide")%></h4><br><hr><br><br>

<center><h3><i>Achievements</i></h3></center><br><hr>
&emsp;<h4>Name of Achievement:-<%=request.getParameter("achievement_name")%><br>
&emsp;Title:-<%=request.getParameter("title")%><br>
&emsp;Place:-<%=request.getParameter("place_of_achievement")%><br>
&emsp;Date:-<%=request.getParameter("date_of_achievement")%></h4><br><hr>

<br><center><h3><i>Refrences</i></h3></center><br><hr>
&emsp;<h4><%=request.getParameter("name_of_refrence")%><br>
&emsp;&ensp;Designation:-<%=request.getParameter("refrence_designation")%><br>
&emsp;&ensp;Affiliation:-<%=request.getParameter("affiliation")%><br>
&emsp;&ensp;Email:-<%=request.getParameter("refrence_email")%><br>
&emsp;&ensp;Contact No.:-<%=request.getParameter("refrence_contact")%></h4><br><hr><br><br>

<center><h3><i>Personal Info</i></h3></center><br><hr><br>
<center><h4>Father Name:-<%=m.get("father_name")%><br>
Mother Name:-<%=m.get("mother_name")%><br>
Gender:-<%=m.get("gender")%><br>
D.O.B:-<%=m.get("dob")%><br>
Age:-<%=m.get("age")%><br>
Nationality:-<%=m.get("nationality")%></h4><br>
<hr>
<br>

</body>

</html>