<!DOCTYPE html>
<html lang="en">
<head>
<title>login in Page</title>
<link rel="stylesheet" href="AppData/css/style.css">
<style>
body {
	background-image: url('AppData/images/back.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
}

input::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
	-webkit-appearance: none;
	margin: 0;
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

	<div class="center">
	<form  action="LogInOutController" method="post" name="loginForm" id="loginForm">
		<input type="hidden" name="docmd" value="checkUserForLogin">
		<h1>Login</h1>
		<table>
			<tr>
				<td>Username:</td>
				<td>
					<input type="email" name="username" id="username" class="textStyle" placeholder="Enter your email id">
				</td>
			</tr>
			<tr>
				<td>Password:</td>
				<td>
					<input type="password" name="password" class="textStyle" id="password" placeholder="Enter Password">
				</td>
			</tr>
			<tr>
				<td>Roles :</td>
				<td>
					<input type="radio" class="radio" name="roles" id="roles"value="Admin">Admin 
					<input type="radio" class="radio" name="roles" id="roles" value="User">User
				</td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<button type="submit" class="btn">Login</button>
					<a href="userRegistration.jsp" class="AnchorBtn">Have you registered yet?</a>
				</td>
			</tr>	
		</table>
	</form>
	</div>
</body>
</html>