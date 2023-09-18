<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="assets/css/loginstyle.css">
</head>
<body>
    <div id="container" class="container">
		<!-- FORM SECTION -->
		<div class="row">
			<!-- SIGN UP -->
			<div class="col align-items-center flex-col sign-up">
				<div class="form-wrapper align-items-center">
					<div class="form sign-up">
						<%
							String msg=request.getParameter("msg");
							if("REGvalid".equals(msg))
								{%>
								<h3 style="color:green;" >Successfully Regestered</h3>
								<% }%>


						<%
							if("REGinvalid".equals(msg))
							{ %>
								<h1 style="color:orange;" >Something went wrong Please try again</h1>
							<% } %>
							
						<form action="SignUp" method="post">
							<div class="input-group">
								<i class='bx bxs-user'></i>
								<input type="text" id="validationDefault01" name="uname" placeholder="Name" required>
							</div>
							<div class="input-group">
								<i class='bx bx-mail-send'></i>
								<input type="mobile" id="form3Example3c" name="uphno" placeholder="Phone" required> 
							</div>
							<div class="input-group">
								<i class='bx bx-mail-send'></i>
								<input type="email" id="form3Example3c" name="uemail" placeholder="Email" required> 
							</div>
							<div class="input-group">
								<i class='bx bxs-lock-alt'></i>
								<input type="password" id="form3Example4c" name="upass" placeholder="Password">
							</div>
							<div class="input-group">
								<i class='bx bxs-lock-alt'></i>
								<input type="password" id="form3Example4cd" name="conpass" placeholder="Confirm password">
							</div>
							<div>
								<button type="submit">Sign up</button>
							</div>
						</form>	
						<p>
							<span>
								Already have an account?
							</span>
							<b onclick="toggle()" class="pointer">
								Sign in here
							</b>
						</p>
					</div>
				</div>
			
			</div>
			<!-- END SIGN UP -->
			
			<!-- SIGN IN -->
			<div class="col align-items-center flex-col sign-in">
				<div class="form-wrapper align-items-center">
					<div class="form sign-in">
						<%
							if("invalid".equals(msg))
								{%>
							<h3 style="color:red;">Email or Password Error!</h3>
							<h5 style="color:#ef4e0f;">Please Enter Correct Email and Password </h5>
							
						<%}%>
							
						<form action="Login" method="post">
							<div class="input-group">
								<i class='bx bxs-user'></i>
								<input type="email" id="form3Example3c" name="uemail" placeholder="Username">
							</div>
							<div class="input-group">
								<i class='bx bxs-lock-alt'></i>
								<input type="password" id="form3Example4c" name="upass" placeholder="Password">
							</div>
							<button type="submit">
								Sign In
							</button>
                    	</form>
						<p>
							<b>
								Forgot password?
							</b>
						</p>
						<p>
							<span>
								Don't have an account?
							</span>
							<b onclick="toggle()" class="pointer">
								Sign up here
							</b>
						</p>
					</div>
				</div>
				<div class="form-wrapper">
		
				</div>
			</div>
			<!-- END SIGN IN -->
		</div>
		<!-- END FORM SECTION -->
		<!-- CONTENT SECTION -->
		<div class="row content-row">
			<!-- SIGN IN CONTENT -->
			<div class="col align-items-center flex-col">
				<div class="text sign-in">
					<h2>
						Welcome
					</h2>
	
				</div>
				<div class="img sign-in">
		
				</div>
			</div>
			<!-- END SIGN IN CONTENT -->
			<!-- SIGN UP CONTENT -->
			<div class="col align-items-center flex-col">
				<div class="img sign-up">
				
				</div>
				<div class="text sign-up">
					<h2>
						Join with us
					</h2>
	
				</div>
			</div>
			<!-- END SIGN UP CONTENT -->
		</div>
		<!-- END CONTENT SECTION -->
	</div>
</body>
<script>
    let container = document.getElementById('container')

toggle = () => {
	container.classList.toggle('sign-in')
	container.classList.toggle('sign-up')
}

setTimeout(() => {
	<%
	if("REGinvalid".equals(msg) || "REGvalid".equals(msg))
		{%>
		container.classList.add('sign-up')
		<%
		}else{
		%>
		container.classList.add('sign-in')
		<%}%>
	
		}, 200)
</script>
</html>