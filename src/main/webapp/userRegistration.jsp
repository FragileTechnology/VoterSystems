<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String successMessage = (String) request.getAttribute("success");
String errorMessage = (String) request.getAttribute("error");
%>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="AppData/css/style.css">
<title>Register User</title>
</head>

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
	function myFunctin()
	{
		var username1 = document.getElementById("useName").value;
		var email1 = document.getElementById("useremail").value;
		var contact = document.getElementById("usercontact").value;
		var password = document.getElementById("userpassword").value;
		var cpassword = document.getElementById("cpassword").value;
		
		if ()
		{
			
		}
		
	}
	function saveUserDetails() {

		var username1 = document.getElementById("useName").value;
		var email1 = document.getElementById("useremail").value;
		var contact = document.getElementById("usercontact").value;
		var password = document.getElementById("userpassword").value;
		var cpassword = document.getElementById("cpassword").value;

		if (username1 == "" || cpassword == "" || password == "" || contact == "" || email1 == "") 
		{
			event.preventDefault();
			alert("Enter valid input.");
		}  
		else {
			if (validatePassWord(password, cpassword)) {
				alert("We are good to submit the form.");
			}
		}
	}
	
	function validatePassWord(pwd, cpwd) {
		var isValidPwd = true;
		if (pwd != cpwd) {
			isValidPwd = false;
			event.preventDefault();
			alert("Please Check the password")
			document.getElementById("warningMsg").innerHTML = "Entered password does not match.";
		}
		return isValidPwd;
	}
	
</script>

<body>



	<div class="center">

		<span id="successMsg"><%=successMessage != null ? successMessage : ""%></span>
		<span id="successMsg"><%=errorMessage != null ? errorMessage : ""%></span>
		<form action="UserRegistrationController" method="post">
			<input type="hidden" name="docmd" id="docmd" value="createUser">
			<h1>Register Yourself</h1>
			<table>
				<tr>
					<td>Name :</td>
					<td><input type="text" name="useName" id="useName"
						class="textStyle" value="" placeholder="Full Name"></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="text" name="useremail" id="useremail"
						class="textStyle" value="" placeholder="Email Address"></td>
				</tr>
				<tr>
					<td>Contact:</td>
					<td><input type="number" name="usercontact" id="usercontact"
						class="textStyle" value="" placeholder="Contact Number"
						onKeyDown="if(this.value.length==10) return false;" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="userpassword"
						id="userpassword" class="textStyle" value=""
						placeholder="Password" minlength="8"></td>
				</tr>
				<tr>
					<td>Confirm:</td>
					<td><input type="password" name="cpassword" id="cpassword"
						class="textStyle" value="" placeholder="Confirm Password"
						minlength="8"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><span id="warningMsg"></span>
						<button type="type" class="btn" onclick="saveUserDetails()">SAVE</button>
						<a href="login.jsp" class="AnchorBtn">Redirect to login</a></td>
				</tr>
			</table>




		</form>
	</div>

</body>
</html>