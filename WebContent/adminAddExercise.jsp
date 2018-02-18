<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Add new exercise</title>
</head>
<body>
	<%@ include file="WEB-INF/header.jsp"%>
	<form action="${pageContext.request.contextPath}/AddExercises" method="post">
		<label>Enter new exercise.</label>
		<br>
		<br>
		<label>Title</label>
		<br>
		<input type="text" name="exerciseTitle">
		<br>
		<label>Description</label>
		<br>
		<input type="text" name="exerciseDescription">
		<br>
		<input type="submit" value="Submit">
		<input type ="reset">
	</form>
	<br>
	<a href="${pageContext.request.contextPath}/AdminExercisePanel">Back</a>
	
	<%@ include file="WEB-INF/footer.jsp"%>
</body>
</html>