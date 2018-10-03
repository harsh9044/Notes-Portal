
<html>
<head>
<link rel="stylesheet" href="indexf/assets/css/main.css" />
</head>
<body><%@page import="java.io.*" %>
<%@page contentType="appliaction/octet-stream" %>
<%

String path=request.getParameter("path");
response.setHeader("Content-Disposition", "attachment; filename=\"" + path + "\"");
FileInputStream fis=new FileInputStream(path);
int i=0;
while((i=fis.read())!=-1)
{
	out.write(i);
}
out.close();
fis.close();
%>
<!-- Header -->
			
			<header id="header">
				<div class="inner">
					<a href="index.jsp" class="logo">Notes Portal</a>
					<nav id="nav">
						<h3><a href="index.jsp">Home</a>
						<a href="crlogin.jsp">CR Login</a>
						<a href="register.jsp">Student Registration</a>
						<a href="login.jsp">Student Login</a>
                                                <a href="logout.jsp">Logout</a>
						</h3></nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				</div>
			</header>
				<!-- Scripts -->
			<script src="indexf/assets/js/jquery.min.js"></script>
			<script src="indexf/assets/js/skel.min.js"></script>
			<script src="indexf/assets/js/util.js"></script>
			<script src="indexf/assets/js/main.js"></script>
			
</body>
</html>
%>