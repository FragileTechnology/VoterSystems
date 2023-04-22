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
<jsp:include page="header.jsp" />

<table class="TblCss" border="1px">
	<caption>All Party Information</caption>
	<thead>
		<tr>
			<td>Party Id</td>
		    <td>Party Name</td>
		    <td>Party President</td>
		    <td>Party Symbol</td>
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
			<td align="center"><%=pEntity.getPartyId() %></td>
		    <td align="center"><%=pEntity.getPartyname() %></td>
		    <td align="center"><%=pEntity.getPresidentname() %></td>
		    <td align="center"><%=pEntity.getSymboll() %></td>
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