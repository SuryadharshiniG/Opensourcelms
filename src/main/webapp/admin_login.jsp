<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Staff Login</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/collagelogo.png" alt="sing up image">
						</figure>
						<h3 class="signup-image-link" style="color:#0047b3">Department Of<br> Information Technology</h3>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Admin login</h2>
						<form class="register-form" method="post"  action="adminloginServlet"
							id="login-form">
							<div class="form-group">
								<label for="Staff ID"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="admin_id" id="admin_id"
									placeholder="Your Admin ID" required />
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pswd" id="pswd"
									placeholder="Password" required />
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Remember
									me</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
							<div>
							<a href="forgot.jsp">forgot password?</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>

	</div>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- method="post"  action="StaffloginServlet" -->
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "failed"){
	swal("sorry","Wrong Username or Password","error");
	}
	else if(status == "invalidstaffid"){
		swal("sorry","please Enter the Admin ID","error");
		}
	else if(status == "invalidpswd"){
		swal("sorry","please Enter the Password","error");
		}
	</script>
</body>
</html>