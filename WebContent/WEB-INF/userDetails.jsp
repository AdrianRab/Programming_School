<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.2/css/bulma.min.css" />
<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>

<title>User ${user.username}</title>
</head>
<body>
<div class="content has-text-centered">
	<%@ include file="header.jsp"%>
</div>
<br>
	<h2 class="title is-2 has-text-centered">Details of user ${user.username}</h2>
	<table class="table is-bordered is-striped is-hoverable"border="1" align="center">
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
	</table>
	<br>
	<table class="table is-bordered is-striped is-hoverable"border="1" align="center">
		<tr>
			<th colspan=8>${user.username} solutions:</th>
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
	<br>
	<p align="center">
		<a class="button has-text-centered is-primary" href="${pageContext.request.contextPath}/LoadAllUsers">Back</a>
	</p>
	<br>
	<br>
	<div class="content has-text-centered">
	<%@ include file="footer.jsp"%>
	</div>
</body>
</html>