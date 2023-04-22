<!DOCTYPE html>
<html lang="en">
<head>
<title>login in Page</title>
<link rel="stylesheet" href="AppData/css/style.css">
<style>
body {
	background-image: url(AppData/images/back.jpg);
	opacity: 0.7;
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
}
</style>
<script>
	function checkUser() {
		
		var username = document.getElementById("username").value;
		var password = document.getElementById("password").value;
		if (username == "" || password == "") {
			alert("Username must be filled out");
		}else{
			document.getElementById("loginForm").submit();
		}
		
	}
</script>
</head>
<body>

	<h1 class="log">Login</h1>
	<form class="login" action="LogInOutController" method="post" name="loginForm" id="loginForm">
		<input type="hidden" name="docmd" value="checkUserForLogin">
		<table>
			<tr>
				<td class="u1">Username :</td>
			</tr>
			<tr>
				<td>
					<input type="email" name="username" id="username" placeholder="Enter your email id">
					</td>
			</tr>


			<tr>
				<td class="u1">Password :</td>
			</tr>
			<tr>
				<td>
					<input type="password" name="password" id="password" placeholder="Enter Password">
				</td>
			</tr>
			<tr>
				<td class="u1">Roles :</td>
			</tr>
			<tr>
				<td>
					<input type="radio" class="radio" name="roles" id="roles"value="Admin">Admin 
					<input type="radio" class="radio" name="roles" id="roles" value="User">User
				</td>
			</tr>


			<tr>
				<td>
					<button type="submit" class="form_btnn">Sign In</button></td>
			</tr>
			
			
			<tr>
				<td><a href="userRegistration.jsp" class="fp2">Have you registered yet?</a></td>
			</tr>	
			
			
			<tr>
				<td><a href="forgot_password" class="fp1">forgot password?</a></td>
			</tr>

		</table>
	</form>
</body>
</html>