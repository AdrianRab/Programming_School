<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All groups</title>
</head>
<body>
		<%@ include file="header.jsp"%>
	<br>
	<br>
	<table border="1">
		<tr>
			<th>Group ID</th>
			<th>Name</th>
			<th>List of group participants</th>
		</tr>
		<c:forEach items="${groups}" var="group">
			<tr>
				<td align="center">${group.id}</td>
				<td align="center">${group.name}</td>
				<td align="center"><a
					href="${pageContext.request.contextPath}/LoadAllUsersByGroupId?id=${group.id}">Details</a></td>
			</tr>
		</c:forEach>

	</table>

	<br>
	<br>
	<%@ include file="footer.jsp"%>
</body>
</html>