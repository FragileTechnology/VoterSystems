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
<jsp:include page="header.jsp" />
<table class="TblCss" border="1px">
<caption>All User Information</caption>
<thead>
	<tr>
		<td>UserId</td>
		<td>Name</td>
		<td>Email_id</td>
		<td>Contact</td>
		<td></td>
		<td></td>
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
		<td align="center">
	     	<button class="Updatebtn">Update</button>
	    </td>
	    <td align="center">
	    	<button class="dltBtn">Delete</button>
	    </td>
	
	
	</tr>
	
	<%
			}
	
		}
	%>
</tbody>
</table>
</body>
</html>