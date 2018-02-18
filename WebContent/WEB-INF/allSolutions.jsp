<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All solutions</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<br>
	<br>
	<table border="1">
		<tr>
			<th>Id</th>
			<th>Created</th>
			<th>Updated</th>
			<th>Description</th>
			<th>Exercise</th>
			<th>User</th>
			<th>Details</th>
		</tr>
		<c:forEach items="${solutions}" var="solution">
			<tr>
				<td align="center">${solution.id}</td>
				<td align="center">${solution.created}</td>
				<td align="center">${solution.updated}</td>
				<td align="center">${solution.description}</td>
				<td align="center">${solution.exercise_id}</td>
				<td align="center">${solution.user_id}</td>
				<td><a
					href="${pageContext.request.contextPath}/SolutionServ?id=${solution.id}">Details</a></td>
			</tr>
		</c:forEach>

	</table>

	<br>
	<br>
	<%@ include file="footer.jsp"%>
</body>
</html>