<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Edit user</title>
</head>
<body>
	<%@ include file="WEB-INF/header.jsp"%>
	
	<form action="${pageContext.request.contextPath}/EditUsers" method="post">
		<label>Edit user.</label>
		<br>
		<br>
		<label>User ID</label>
		<input type="text" name="userId" value="${param.userId}" readonly>
		<br>
		<label>New name</label>
		<input type="text" name="editedUserName">
		<br>
		<label>New email</label>
		<input type="text" name="editedUserEmail">
		<br>
		<label>New group ID</label>
		<input type="number" name="editedGroupId" min="1">
		<br>
		<input type="submit" value="Submit">
		<input type="reset" value ="Reset">
	</form>
	<br>
	<a href="${pageContext.request.contextPath}/AdminUserPanel">Back</a>
	
	<%@ include file="WEB-INF/footer.jsp"%>
</body>
</html>