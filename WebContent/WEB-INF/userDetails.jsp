<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User ${user.username}</title>
</head>
<body>
	<%@ include file="header.jsp"%>

	<h2>User ${user.username}, details</h2>
	<table border="1">
		<tr>
			<th>Name:</th>
			<th>E-mail address:</th>
			<th>Group:</th>
		</tr>
		<tr>
			<td align="center"><p>${user.username}
				<p></td>
			<td align="center"><p>${user.email}</p></td>
			<td align="center"><p>${group.name}</p></td>
		</tr>
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr>
			<th colspan=8>${user.username}solutions:</th>
		</tr>
		<c:forEach items="${solutions}" var="solution">
			<tr>
				<th scope="row">Creation date:</th>
				<td align="center">${solution.created }</td>
				<th scope="row">Update:</th>
				<td align="center">${solution.updated}</td>
				<th scope="row">Description:</th>
				<td align="center">${solution.description}</td>
				<th scope="row">Exercise details:</th>
				<td align="center">${solution.exercise_id}</td>
			</tr>
		</c:forEach>
	</table>

	<%@ include file="footer.jsp"%>
</body>
</html>