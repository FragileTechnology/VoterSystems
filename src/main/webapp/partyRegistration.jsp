
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Party Registration page</title>
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
<div class="center">
<h1>Party Registration Page</h1>
	<form class="main" action="PartyController" method="post">
	<table>
		<tr>
			<td> Party Name: </td>
			<td>
				<input type="text" id="username" name="username" class="textStyle" placeholder="please enter your username">
			</td>
		</tr>
		<tr>

			<td>Party President Name :</td>
			<td>
				<input type="text" id="party president " name="president" class="textStyle" placeholder="Enter President Name">
				
			</td>
		</tr>
		<tr>
			<td>Party Symbol:</td>
			<td>
				<input type="file" id="party symbol" name="username" placeholder="please upload party symbol">
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<button type="submit" class="btn">SAVE</button>
			</td>
		</tr>		
	</table>
</form>
</div>


</body>
</html>