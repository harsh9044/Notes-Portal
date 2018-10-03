<!DOCTYPE html>
<html lang="en">
<head>
	<title>Upload Notes</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="loginf/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="loginf/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="loginf/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="loginf/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="loginf/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="loginf/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="loginf/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="loginf/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="loginf/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="loginf/css/util.css">
	<link rel="stylesheet" type="text/css" href="loginf/css/main.css">
<!--===============================================================================================-->
<link rel="stylesheet" href="indexf/assets/css/main.css" />

</head>
<body>
<%
//allow access only if session exists
String user = null;
if(session.getAttribute("clr") == null)
{
	response.sendRedirect("crlogin.jsp");
}
else 
	
	
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
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" >
					<span class="login100-form-title-1">
						Upload Notes
					</span>
				</div>

				<form action="abc" method="post" enctype="multipart/form-data" class="login100-form validate-form">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Please enter some Title">
						<span class="label-input100">Title or Description</span>
						<input class="input100" type="text" name="name" placeholder="Enter Here" >
						<span class="focus-input100"></span>
					

					

						
					

					<div class="container-login100-form-btn">
						<input type="file" name="file" value="Upload">
						<br><br><br><br><hr>
						
						<input type="submit"  value="Go">
						
						
					
<HR>
<div>
<br><br><br>							<a href="logout.jsp" class="txt1">
								Logout
							</a>
						</div>
							</div>
								</div>

</div>
				
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="loginf/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="loginf/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="loginf/vendor/bootstrap/js/popper.js"></script>
	<script src="loginf/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="loginf/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="loginf/vendor/daterangepicker/moment.min.js"></script>
	<script src="loginf/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="loginf/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="loginf/js/main.js"></script>
	<!-- Scripts -->
			<script src="indexf/assets/js/jquery.min.js"></script>
			<script src="indexf/assets/js/skel.min.js"></script>
			<script src="indexf/assets/js/util.js"></script>
			<script src="indexf/assets/js/main.js"></script>

</body>
</html>