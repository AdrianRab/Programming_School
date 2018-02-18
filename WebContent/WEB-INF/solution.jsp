<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Solution</title>
</head>
<body>

	<%@ include file="header.jsp"%>

	<h2>Solution ${particulatSolution.id}, details</h2>
	<table border="1">
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
	<%@ include file="footer.jsp"%>
</body>
</html>