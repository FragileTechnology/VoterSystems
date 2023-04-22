<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="AppData/css/style.css">

<style>
body {
	background-image: url(AppData/images/back.jpg);
	opacity: 0.7;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}
</style>
</head>
<body>
	<h1>Candidate Registration</h1>

	<div class="center">

		<form action="CandidateRegistrationController" method="post">
		<input type="hidden" name="docmd" value="createCandidate">
			<table>
				<tr>
					<td>Name:</td>
					<td><input type="text" name="name" id="" placeholder="Enter Name"></td>
					<td>Election Program</td>
					<td><select name="electionProgram" id="">
							<option value="">A</option>
							<option value="">B</option>
							<option value="">B</option>
							<option value="">C</option>
							<option value="">D</option>
					</select></td>
				</tr>

				<tr>
					<td>Year:</td>
					<td><input type="number" name="year" id=""></td>
					<td>Election Type:</td>
					<td><select name="electionType" id="">
							<option value="">-select-</option>
							<option value="">A</option>
							<option value="">B</option>
					</select></td>
				</tr>

				<tr>
					<td>Start Date:</td>
					<td><input type="date" id="" name="startDate"></td>
					<td>End Date:</td>
					<td><input type="date" id="" name="endDate"></td>
				</tr>

				<tr>
					<td>Division:</td>
					<td><select name="division" id="">
							<option value="">-select-</option>
							<option value="">A</option>
							<option value="">B</option>
					</select></td>
					<td>District:</td>
					<td><select name="district" id="">
							<option value="">-select-</option>
							<option value="">A</option>
							<option value="">B</option>
					</select></td>
				</tr>

				<tr>
					<td>Tehsil:</td>
					<td><select name="tehsil" id="">
							<option value="">-select-</option>
							<option value="">A</option>
							<option value="">B</option>
					</select></td>
					<td>Age:</td>
					<td><input type="number" name="age" min="25" max="50"
						placeholder="Enter Age"></td>
				</tr>
				<tr>
					<td>Contact:</td>
					<td><input type="number" name="contact" min="25" max="50"
						placeholder="Enter Contact No."></td>
				</tr>


				<tr>
					<td>Ward Name:</td>
					<td><input type="text" name="wardName" id=""
						placeholder="Enter Ward Name"></td>
					<td>Ward Number:</td>
					<td><input type="number" name="wardNumber" placeholder="Enter Ward No."></td>
				</tr>

				<tr>
					<td>Reservation Category:</td>
					<td><select name="reservationCategory" id="">
							<option value="">-select-</option>
							<option value="">A</option>
							<option value="">B</option>
					</select></td>
					<td>Postal Address:</td>
					<td><textarea rows="3" cols="20" name="postalAddress" name="postalAddress"
							placeholder="Enter address here"></textarea></td>
				</tr>
					
			</table>
					<button type="submit" >Submit</button>
		</form>
	</div>

</body>
</html>