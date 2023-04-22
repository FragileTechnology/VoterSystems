<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DashBoard</title>
<link rel="stylesheet" href="AppData/css/style.css">

</head>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>

<body>
	<jsp:include page="header.jsp" />
	
	<h1>Party Wise Voter Interest</h1>
	
	<table style="width: 100%;margin-top: 5%;">
		<tr>
			<td>
					<canvas id="myChart" style="width:100%;max-width:600px"></canvas>
			</td>
			<td>
					<canvas id="myPieChart" style="width:100%;max-width:600px"></canvas>
			</td>
		</tr>
	</table>
	
	
</body>
<script>
var xValues = ["Congress", "NCP", "Manase", "ShivSena", "BJP"];
var yValues = [1995, 2000, 2005, 2010, 2015];
var barColors = ["red", "green","blue","orange","brown"];

new Chart("myChart", {
  type: "bar",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    legend: {display: false},
    title: {
      display: true,
      text: "PartWise Voting"
    }
  }
});


/*Pie Chart*/


var xValues = ["Congress", "NCP", "Manase", "ShivSena", "BJP"];
var yValues = [15, 20, 12, 8, 45];
var barColors = ["red", "green","blue","orange","brown"];

new Chart("myPieChart", {
  type: "pie",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    title: {
      display: true,
      text: "PartWise Voting"
    }
  }
});


</script>
</html>