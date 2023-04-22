<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="AppData/css/style.css">
</head>

<body>
	<div class="navbar">
		<div class="dropdown">
			<button class="dropbtn">
				All Data <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="#">View All Voter</a> 
				<a href="viewUserData.jsp">View All User</a>
				 <a href="viewPartyDetails.jsp">View All Party</a>
					
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

</body>
</html>