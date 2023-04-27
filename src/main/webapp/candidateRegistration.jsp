<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	

	<div class="twoSideForm">
		<h1>Candidate Registration</h1>
		<form action="CandidateRegistrationController" method="post">
		<input type="hidden" name="docmd" value="createCandidate">
			<table>
				<tr>
					<td>Name:</td>
					<td><input type="text" name="name" class="textStyle" id="" placeholder="Enter Name"></td>
					<td>Election Program</td>
					<td><select name="electionProgram" id="" class="textStyle">
							<option value="">AAA</option>
							<option value="">B</option>
							<option value="">B</option>
							<option value="">C</option>
							<option value="">D</option>
						</select>
					</td>
				</tr>

				<tr>
					<td>Year:</td>
					<td><input type="number" name="year" class="textStyle" id=""></td>
					<td>Election Type:</td>
					<td><select name="electionType" id="" class="textStyle">
							<option value="">-select-</option>
							<option value="">A</option>
							<option value="">B</option>
					</select></td>
				</tr>

				<tr>
					<td>Start Date:</td>
					<td><input type="date" id="" name="startDate" class="textStyle"></td>
					<td>End Date:</td>
					<td><input type="date" id="" name="endDate" class="textStyle"></td>
				</tr>

				<tr>
					<td>Division:</td>
					<td><select name="division" id="" class="textStyle">
							<option value="">-select-</option>
							<option value="">Aurangabad</option>
							<option value="">Nashik</option>
							<option value="">Pune</option>										
						</select>
					</td>
					<td>District:</td>
					<td><select name="district" id="" class="textStyle">
							<option value="">-select-</option>
							<option value="">Latur</option>
							<option value="">Dharashiv</option>
							<option value="">Beed</option>
							<option value="">Sambhaji Nagar</option>
						</select>
					</td>
				</tr>

				<tr>
					<td>Tehsil:</td>
					<td><select name="tehsil" id="" class="textStyle">
							<option value="">-select-</option>
							<option value="">Ausa</option>
							<option value="">Renapur</option>
							<option value="">Haveli</option>
							<option value="">Kalamb</option>
							<option value="">Mulshi</option>
						</select>
					</td>
					<td>Age:</td>
					<td><input type="number" name="age" class="textStyle" min="25" max="50" placeholder="Enter Age"></td>
				</tr>


				<tr>
					<td>Ward Name:</td>
					<td><input type="text" name="wardName" class="textStyle" id="" placeholder="Enter Ward Name"></td>
					<td>Ward Number:</td>
					<td><input type="number" name="wardNumber" class="textStyle" placeholder="Enter Ward No."></td>
				</tr>

				<tr>
					<td>Reservation Category:</td>
					<td><select name="reservationCategory" id="" class="textStyle">
							<option value="">-select-</option>
							<option value="">General</option>
							<option value="">SC/ST</option>
							<option value="">OBC</option>
							<option value="">NT</option>
						</select>
					</td>
					<td>Postal Address:</td>
					<td><textarea rows="3" cols="20" name="postalAddress" class="textStyle" name="postalAddress" placeholder="Enter address here"></textarea></td>
				</tr>
					
				<tr>
					<td>Contact:</td>
					<td><input type="number" name="contact" class="textStyle" min="25" max="50" placeholder="Enter Contact No."></td>
				</tr>
			</table>
					<button type="submit" class="btn">Submit</button>
		</form>
	</div>

</body>
</html>