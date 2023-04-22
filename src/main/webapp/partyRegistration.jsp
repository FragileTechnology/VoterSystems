
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Party Registration page</title>

<link rel="stylesheet" href="AppData/css/style.css">
<style>
body {
	background-image: url(AppData/images/image5.jpeg);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}
</style>
</head>
<body>

	<div class="navbar">
		<div class="dropdown">
			<button class="dropbtn">
				All Data <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="#">View All Voter</a> <a href="#">View All Candidate</a> <a
					href="#">View All Party</a>
			</div>
		</div>
		<a href="#news">News</a>
		<div class="dropdown">
			<button class="dropbtn">
				Applications <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
					     
				<a href="partyRegistration.jsp">Party Registration</a> 
				<a href="#">Voter Registration</a> 
				<a href="candidateRegistration.jsp">Candidate Registration</a> 
				<a href="#">Election Defeat</a>
					
			</div>
		</div>
	</div>

<h1>Party Registration Page</h1>
	<table class="main">
		
		
		<tr>
			<td><label> Party Name: </label></td>
			<td><input type="text" id="username" name="username"
				placeholder="please enter your username"><br></td>
		</tr>
		<tr>
			<td><label>Party Symbol:</label></td>
			<td>
				<input type="file" id="party symbol" name="username" placeholder="please upload party symbol">
			</td>
		</tr>
		<tr>

			<td><label>Party President Name :</label></td>
			<td>
				<input type="text" id="party president " name="president" placeholder="Enter President Name">
				
			</td>
		</tr>


	</table>




</body>
</html>