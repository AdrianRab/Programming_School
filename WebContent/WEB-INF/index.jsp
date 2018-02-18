<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Programming school</title>
</head>
<body>
	<%@ include file="header.jsp"%>


	<a href="${pageContext.request.contextPath}/LoadAllSolutions">Solutions</a>
	<br>
	<a href="${pageContext.request.contextPath}/LoadAllGroups">Groups</a>
	<br>
	<a href="${pageContext.request.contextPath}/LoadAllUsers">Users</a>
	<br>
	<br>
	<br>
	<h4>Admin panel:</h4>
	<a href="${pageContext.request.contextPath}/AdminGroupPanel">Admin groups</a>
	<a href="${pageContext.request.contextPath}/AdminUserPanel">Admin users</a>
	<a href="${pageContext.request.contextPath}/AdminExercisesPanel">Admin exercises</a>
	<%@ include file="footer.jsp"%>
	<br>
</body>
</html>