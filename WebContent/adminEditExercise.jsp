<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Edit exercise </title>
</head>
<body>
	<%@ include file="WEB-INF/header.jsp"%>
	<form action="${pageContext.request.contextPath}/EditExercises" method="post">
		<label>Edit exercise.</label>
		<br>
		<br>
		<label>Exercise ID</label>
		<input type="text" name="exerciseId" value="${param.exerciseId}" readonly>
		<br>
		<label>Title</label>
		<br>
		<input type="text" name="editedExerciseTitle">
		<br>
		<label>Description</label>
		<br>
		<input type="text" name="editedExerciseDescription">
		<br>
		<input type="submit" value="Submit">
		<input type ="reset">
	</form>
	<br>
	<a href="${pageContext.request.contextPath}/AdminExercisePanel">Back</a>
	
	<%@ include file="WEB-INF/footer.jsp"%>
</body>
</html>