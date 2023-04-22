<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="AppData/css/vstyle.css">
</head>

<style>
body {
	background-image: url('AppData/images/back.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
}
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
  
</style>

<script>

function validateForm()
{
	alert();
	int num = document.getElementById("pincode").value;
	
	if(num != (/^[0-9]+$/))
	{
		alert();
	}
}

</script>

<body>
<div id="class">
	<form action="VoterRegistrationController" method="post">
	<input type="hidden" name="docmd" id="docmd" value="createVoter">
	
			<table>
			
		<tr> <td> Name : <input type="text" name="voterName" id="voterName" value="" placeholder="Full Name"> </td> </tr> 
		<tr> <td> Email: <input type="text"name="voteremail" id="voteremail" value="" placeholder="Email Address"></td></tr>
		<tr> <td> Contact: <input type="number"  name="votercontact" id="votercontact" value="" placeholder="Contact Number" onKeyDown="if(this.value.length==10) return false;" />
		<tr> <td> Gender:
		 <input type="radio" name="G"  value="Male" >Male 
		 <input type="radio" name="G"  value="Female" >Female 
		</td>
		<tr> <td> Aadhar Number: <input type="number" name="aadhar" id="aadhar" placeholder="Aadhar Number" > </td> </tr>		
		<tr> <td> DOB: <input type="date" name="dob" id="dob" value="" ></td></tr>
		<tr> <td> State: <input type="text" > </td></tr>
		<tr> <td> City: <input type="text" ></td> </tr>
		<tr> <td> District: <input type="text" ></td> </tr>
		<tr> <td> Taluka: <input type="text" ></td> </tr>
		<tr> <td> Village: <input type="text"> </td> </tr>
		<tr> <td> Postal Code: <input type="text" name="pincode" id="pincode" value="" placeholder="Postal Code" maxlength=6 ></td> <tr>
		 </table>
		 
		<button type="submit" class="btn" onclick="validateForm()">SAVE</button>
	</form>
	
	</div>
</body>
</html>
