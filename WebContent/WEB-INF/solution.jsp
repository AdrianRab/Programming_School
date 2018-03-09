<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.2/css/bulma.min.css" />
<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Solution</title>
</head>

<body>
	<div class="content has-text-centered">
		<%@ include file="header.jsp"%>
	</div>
	
	<h2 class="content has-text-centered title is-2">Solution ${particulatSolution.id}, details</h2>
	<table class="table is-bordered is-striped is-hoverable" border="1" align="center">
		<tr>
			<th>Creation date:</th>
		</tr>
		<tr>
			<td align="center"><p>${particulatSolution.created}<p></td>
		</tr>
		<tr>
			<th>Update:</th>
		</tr>
		<tr>
			<td align="center"><p>${particulatSolution.updated}</p></td>
		</tr>
		<tr>
			<th>Description:</th>
		</tr>
		<tr>
			<td align="center"><p>${particulatSolution.description}</p></td>
		</tr>
		<tr>
			<th>Exercise details:</th>
		</tr>
		<tr>
			<td align="center"><p>${particulatSolution.exercise_id}</p></td>
		</tr>
		<tr>
			<th>User details:</th>
		</tr>
		<tr>
			<td align="center"><p>${particulatSolution.user_id}<p></td>
		</tr>
	</table>
	<br>
	<p align="center">
		<a class="button has-text-centered is-primary" href="${pageContext.request.contextPath}/LoadAllSolutions">Back</a>
	</p>
	<br>
	<div class="content has-text-centered">
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>