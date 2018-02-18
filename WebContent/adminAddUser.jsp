<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Add new user</title>
</head>
<body>
		<%@ include file="WEB-INF/header.jsp"%>
	<p>Fill in the form to add a new user.</p>
	<form action="${pageContext.request.contextPath}/AddUsers" method="post">
		<label>User name</label>
		<br>
		<input type="text" name="userName">
		<br>
		<label>User e-mail</label>
		<br>
		<input type="text" name="userEmail">
		<br>
		<label>User password</label>
		<br>
		<input type="text" name="userPassword">
		<br>
		<label>User group (id)</label>
		<br>
		<input type="number" name="groupId">
		<br>
		<br>
		<input type="submit" value="Submit">
	</form>
	<br>
	<a href="${pageContext.request.contextPath}/AdminUserPanel">Back</a>
	
	<%@ include file="WEB-INF/footer.jsp"%>
</body>
</html>