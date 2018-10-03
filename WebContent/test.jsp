<%@ page import="com.example.dao.Dao"%>
<%@ page import="com.example.model.Clr"%>
<%@ page import="java.sql.*"%>

<html><head><style>table#t01 {
 
     border: 1px solid black;
    border-collapse: collapse;
    width: 100%; 
    background-color: #d4e0ef;
    border-spacing: 5px;
}
   th, td {
   text-align: center;
    padding: 15px;
}
</style></head>
<body>
<%
String crcode=request.getParameter("tablename");
Clr c=new Clr();
c.setKey(crcode);
try{
	PreparedStatement ps1=Dao.getCon().prepareStatement("SELECT * FROM "+crcode+"");
	ResultSet rs=ps1.executeQuery();
%>
<table id="t01">
<tr>
<th>Click to Download!</th>
</tr>
<% 
while(rs.next())
{
%>
<tr>
<td><a href="download.jsp?path=<%=rs.getString(2)%>"><%=rs.getString(1)%></a></td>
				 </tr>
<% 
}
          
	}
catch(Exception e)
{
out.print(e);
}


%>

</table>
</body>
</html>