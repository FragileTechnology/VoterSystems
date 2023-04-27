<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voting Day</title>
<link rel="stylesheet" href="AppData/css/style.css">
</head>
<style>
body {
	background-image: url('AppData/images/back.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
}

</style>
<body>
	<jsp:include page="header.jsp" />
	<div class="centerv">
	<h1>VOTING DAY</h1>
	<table border="1px" style=" border-collapse: collapse; width:100%;">
		<tr style="background-color: #4d8aeb;height: 40px;color:white;">
			<th>Part Name</th>
			<th>Candidate Name</th>
			<th>Symbol</th>	
			<th>Make Vote</th>
		</tr>
		<tr>
			<th>BJP Party</td>
			<th>Sarthak Mahajan</td>
			<td align="center">
				<img src="AppData/images/bjp.png" height="100px" width="100px">
			</td>
			<td align="center">
				<button type="button" class="VoteBtn">Make Vote</button>
			</td>
		</tr>
		<tr>
			<th>Manase</td>
			<th>Chetan Mane</td>
			<td align="center">
				<img src="AppData/images/mns.png" height="100px" width="100px">
			</td>
			<td align="center">
				<button type="button" class="VoteBtn">Make Vote</button>
			</td>
		</tr>
		<tr>
			<th>NCP</td>
			<th>Vipul Raut</td>
			<td align="center">
				<img src="AppData/images/ncp.png" height="100px" width="100px">
			</td>
			<td align="center">
				<button type="button" class="VoteBtn">Make Vote</button>
			</td>
		</tr>
		<tr>
			<th>Congress</td>
			<th>Yogesh Patil</td>
			<td align="center">
				<img src="AppData/images/congress.png" height="100px" width="100px">
			</td>
			<td align="center">
				<button type="button" class="VoteBtn">Make Vote</button>
			</td>
		</tr>
		<tr>
			<th>AAP</td>
			<th>Walmik Dabhade</td>
			<td align="center">
				<img src="AppData/images/aap.png" height="100px" width="100px">
			</td>
			<td align="center">
				<button type="button" class="VoteBtn">Make Vote</button>
			</td>
		</tr>
		<tr>
			<th>Shivsena</td>
			<th>Ram Shinde</td>
			<td align="center">
				<img src="AppData/images/sena.png" height="100px" width="100px">
			</td>
			<td align="center">
				<button type="button" class="VoteBtn">Make Vote</button>
			</td>
		</tr>
	</table>
	</div>
	
</body>
</html>