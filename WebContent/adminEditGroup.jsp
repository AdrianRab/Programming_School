<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Edit group</title>
</head>
<body>
	<%@ include file="WEB-INF/header.jsp"%>
	
	<form action="${pageContext.request.contextPath}/EditGroups" method="post">
		<label>Edit group name.</label>
		<br>
		<br>
		<label>Group ID</label>
		<input type="text" name="groupId" value="${param.groupId}" readonly>
		<br>
		<label>New name</label>
		<input type="text" name="editedGroupName">
		<br>
		<input type="submit" value="Submit">
		<input type="reset" value ="Reset">
	</form>
	<br>
	<a href="${pageContext.request.contextPath}/AdminGroupPanel">Back</a>
	
	<%@ include file="WEB-INF/footer.jsp"%>

</body>
</html>