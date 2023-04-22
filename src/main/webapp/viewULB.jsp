<%@page import="java.util.Iterator"%>
<%@page import="com.votersystem.dto.MSDefinitionEntity"%>
<%@page import="com.votersystem.dao.MSDefinitionDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
List electionTypeList = MSDefinitionDAO.getInstance().findByDefCategory("Election Type");
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<jsp:include page="header.jsp" />
	<!--To Show Total Count In Database-->
	<b>Total Available Record : </b><%=electionTypeList.size()%>
	<table border=1px;>
		<thead>
			<tr>
				<td>DEF_ID</td>
				<td>name</td>
				<td>CATEGORY</td>
				<td>SUB_CATEGORY</td>
			</tr>
		</thead>
		<tbody>
			<%
				if(electionTypeList != null && !electionTypeList.isEmpty()){
					Iterator itr = electionTypeList.iterator();
					while(itr.hasNext()){
						MSDefinitionEntity defEntity = (MSDefinitionEntity)itr.next();
			%>
			
			<tr>
				<td><%=defEntity.getDef_id() %></td>
				<td><%=defEntity.getName() %></td>
				<td><%=defEntity.getCategory() %></td>
				<td><%=defEntity.getSubCategory() %></td>
				
			</tr>
			
			<%
					}
				}
			%>
		</tbody>
	</table>
</body>
</html>