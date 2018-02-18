<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Add group</title>
</head>
<body>
	<%@ include file="WEB-INF/header.jsp"%>
	<form action="${pageContext.request.contextPath}/AddGroups" method="post">
		<label>Enter new group name.</label>
		<br>
		<br>
		<input type="text" name="groupName">
		<br>
		<input type="submit" value="Submit">
	</form>
	<br>
	<a href="${pageContext.request.contextPath}/AdminGroupPanel">Back</a>
	
	<%@ include file="WEB-INF/footer.jsp"%>
</body>
</html>