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
<title>Add new user</title>
</head>
<body>
	<div class="content has-text-centered">
		<%@ include file="WEB-INF/header.jsp"%>
	</div>
	<br>
	<br>
			<p class="title is-2" align="center">Fill in the form to add a new user.</p>
	<div align="center" style=" display: flex;justify-content: center;">
		<form action="${pageContext.request.contextPath}/AddUsers" method="post">
			<div class="field">
				<label class="label">User name</label>
				<input type="text" name="userName">
			</div>
			<div class="field">
				<label class="label">User e-mail</label>
				<input type="text" name="userEmail">
			</div>
			<div class="field">
				<label class="label">User password</label>
				<input type="text" name="userPassword">
			</div>
			<div class="field">
				<label class="label">User group (id)</label>
				<input type="number" name="groupId">
			</div>
			<br>
			<br>
			<div class="field">
				<div  class="control">
				<input class="button is-primary"  type="submit" value="Submit">
				<input class="button is-danger" type="reset" value ="Reset">
				</div>
			</div>
		</form>
	</div>
	<br>
	<br>
	<p align="center">
		<a class="button has-text-centered is-primary" href="${pageContext.request.contextPath}/AdminUserPanel">Back</a>
	</p>
	<br>
	<br>
	<div class="content has-text-centered">
		<%@ include file="WEB-INF/footer.jsp"%>
	</div>
</body>
</html>