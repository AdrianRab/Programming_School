<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.2/css/bulma.min.css" />
<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>

<title>Admin Exercises</title>
</head>
<body>
	<div class="content has-text-centered">
		<%@ include file="header.jsp"%>
	</div>
	<br>
	<br>
	<c:if test = "!(${newExercise}==null || ${newExercise}=='')">
		<p>Exercise has been successfully added.</p>
	</c:if>
		<c:if test = "!(${editedExercise}==null || ${editedExercise}=='')">
		<p>Exercise has been successfully changed.</p>
	</c:if>
	
	<br>
	<table class="table is-bordered is-striped is-hoverable" border="1" align="center">
		<tr><td colspan = "4" align="center" style="text-align:center"><a
		href="${pageContext.request.contextPath}/adminAddExercise.jsp">Add new exercise</a></td></tr>
		<tr>
			<th>Exercise ID</th>
			<th>Title</th>
			<th>Description</th>
			<th>Edit exercise</th>
		</tr>
		<c:forEach items="${exercises}" var="exercise">
			<tr>
				<td align="center">${exercise.id}</td>
				<td align="center">${exercise.title}</td>
				<td align="center">${exercise.description}</td>
				<td align="center"><a
					href="${pageContext.request.contextPath}/adminEditExercise.jsp?exerciseId=${exercise.id}">Edit</a></td>
			</tr>
		</c:forEach>

	</table>
	<br>
	<p align="center">
		<a class="button has-text-centered is-primary" href="${pageContext.request.contextPath}/panel">Back</a>
	</p>
	<br>
	<br>
	<div class="content has-text-centered">
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>