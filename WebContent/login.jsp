<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>
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
				<div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Sign In
					</span>
				</div>

				<form name="f1" method="post" action="UserLogin" class="login100-form validate-form">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Roll number is required">
						<span class="label-input100">Roll Number</span>
						<input class="input100" type="text" name="roll1" placeholder="Enter roll no" onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode) )) return false;">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="pass1" placeholder="Enter password">
						<span class="focus-input100"></span>
					</div>

					<div class="flex-sb-m w-full p-b-30">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
													<a href="#" class="txt1">
								Forgot Password?
							</a>
						

					<div class="container-login100-form-btn">
						<input type="submit"  value="Login">
						
						<div>
							<a href="register.jsp" class="txt1">
								Not Member Yet ? Register Here
							</a>
						</div></div>

						<div>
						
					
				</form>
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
	
	<script src="indexf/assets/js/jquery.min.js"></script>
			<script src="indexf/assets/js/skel.min.js"></script>
			<script src="indexf/assets/js/util.js"></script>
			<script src="indexf/assets/js/main.js"></script>

</body>
</html>