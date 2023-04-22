<%@page import="com.votersystem.dao.UserDAOImpl"%>

<%@page import="com.votersystem.dao.UserDAO"%>

<%@page import="com.votersystem.dto.UserEntity"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
	UserDAO dao = new UserDAOImpl();
	List<UserEntity> userList = dao.getAllUserDetails();;
	

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
<table border=1px;>
<thead>
	<tr>
		<td>UserId</td>
		<td>Name</td>
		<td>Email_id</td>
		<td>Contact</td>
	</tr>
</thead>
<tbody>
	<%
		if(userList !=null && !userList.isEmpty()){
			Iterator<UserEntity> itr = userList.iterator();
			while(itr.hasNext()){
				UserEntity uEntity = itr.next();
		
	%>
	<tr>
		<td><%=uEntity.getUserId()  %></td>
		<td><%=uEntity.getName() %></td>
		<td><%=uEntity.getEmail() %></td>
		<td><%=uEntity.getContact() %></td>
	
	
	
	</tr>
	
	<%
			}
	
		}
	%>
</tbody>
</table>
</body>
</html>