<%@page import="java.util.Iterator"%>
<%@page import="com.votersystem.dao.PartyDAOImpl"%>
<%@page import="com.votersystem.dao.PartyDAO"%>
<%@page import="com.votersystem.dto.PartyEntity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
	PartyDAO dao = new PartyDAOImpl();	
	List<PartyEntity> partyList = dao.getAllPartyDetails();

%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="AppData/css/style.css">
<body>
	<div class="navbar">
		<div class="dropdown">
			<button class="dropbtn">
				All Data <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="#">View All Voter</a> 
				<a href="#">View All Candidate</a>
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
<table border=1px;>
	<thead>
		<tr>
			<td>Party_id</td>
		    <td>Party_name</td>
		    <td>Party_president</td>
		    <td>Party_symboll</td>
		    <td></td>
		    <td></td>
		</tr>
	
	</thead>
	<tbody>
		<%
			if(partyList != null && !partyList.isEmpty()){
				Iterator<PartyEntity> itr = partyList.iterator();
				while(itr.hasNext()){
					PartyEntity pEntity = itr.next();
					
		%>
		<tr>
			<td><%=pEntity.getPartyId() %></td>
		    <td><%=pEntity.getPartyname() %></td>
		    <td><%=pEntity.getPresidentname() %></td>
		    <td><%=pEntity.getSymboll() %></td>
		     <td>
		     	<button>Update</button>
		     </td>
		    <td><button>Delete</button></td>
		</tr>
		
		<% 
				}
			}
		%>
		
	
	
	</tbody>
	
</table> 


</body>
</html>