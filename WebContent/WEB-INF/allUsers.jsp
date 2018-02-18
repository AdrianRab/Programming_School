<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>All users</title>
</head>
<body>

		<%@ include file="header.jsp"%>
	<br>
	<br>
	<table border="1">
		<tr>
			<th colspan = 3>All school participants (limit 10 per page)</th>
		</tr>
		<c:forEach items="${users}" var="user">
			<tr>
				<td align="center">${user.id}</td>
				<td align="center">${user.username}</td>
				<td align="center">${user.email}</td>
			</tr>
		</c:forEach>

	</table>

	<br>
	<br>
	<%@ include file="footer.jsp"%>
	
</body>
</html>