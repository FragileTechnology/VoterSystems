<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voter Registration</title>
<link rel="stylesheet" href="AppData/css/style.css">
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
<body>
<jsp:include page="header.jsp" />
<div class="twoSideForm">
	<h1>Voter Application</h1>
	<form action="VoterRegistrationController" method="post">
			<input type="hidden" name="docmd" id="docmd" value="createVoter">
			<table>
				<tr>
			        <td> Name :</td> 
			        <td><input type="text" name="voterName" id="voterName" class="textStyle" value="" placeholder="Full Name"> </td>
			    	<td> Email:</td>
			        <td> <input type="text" name="voteremail" id="voteremail" class="textStyle" value="" placeholder="Email Address"></td>
			    </tr>
			   
			    <tr>
			        <td> Contact: </td>
			        <td>
			        <input type="number" name="votercontact" id="votercontact" class="textStyle" value="" placeholder="Contact Number" onKeyDown="if(this.value.length==10) return false;" />
			        </td>
			         <td> Aadhar Number: </td>
			        <td> <input type="number" name="aadhar" id="aadhar"  class="textStyle" placeholder="Aadhar Number"></td>
			            
			    </tr>
			    <tr>
			        <td>DOB:</td>
			        <td>  <input type="date" name="dob" id="dob" class="textStyle" value=""></td>
			    	 <td>State:</td>
			        <td>  <input type="text" name="state" class="textStyle" id="state"> </td>
			    </tr>
			    
			    <tr>
			        <td>City: </td>
			        <td> <input type="text" name="city" class="textStyle" id="city"></td>
			    	<td>District: </td>
			        <td> <input type="text" name="district" class="textStyle" id="distrcit"></td>
			    </tr>
		
			    <tr>
			        <td>Taluka:</td>
			        <td>  <input type="text" name="taluka" class="textStyle" id="taluka"></td>
			    	<td>Village:</td>
			        <td>  <input type="text" name="village" class="textStyle" id="village"> </td>
			    </tr>
			    
			    <tr>
			        <td>Postal Code:</td>
			        <td> 
			        	 <input type="text" name="postalcode" id="postalcode" class="textStyle" value="" placeholder="Postal Code" maxlength=6>
			        </td>
			        <td> Gender:</td>
			        <td>
			            <input type="radio" name="G" value="Male">Male
			            <input type="radio" name="G" value="Female">Female
			        </td>  
			        
			    </tr>
				 <tr>
				 	<td colspan="4" align="center">
				 		<button type="submit" class="btn">SAVE</button>
				 	</td>
				 </tr>	
			</table>
	</form>
	</div>
</body>
</html>
