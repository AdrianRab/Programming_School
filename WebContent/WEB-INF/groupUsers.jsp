<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.2/css/bulma.min.css" />
<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>

<title>List of users of group ${group.name}</title>
</head>
<body>
	<div class="content has-text-centered">
		<%@ include file="header.jsp"%>
	</div>
	<br>
	<br>
	<table class="table is-bordered is-striped is-hoverable" border="1" align="center">
		<tr>
			<th colspan = 3>List of ${group.name} participants</th>
		</tr>
		<c:forEach items="${particularGroupUsers}" var="user">
			<tr>
				<td align="center">${user.id}</td>
				<td align="center">${user.username}</td>
				<td align="center">${user.email}</td>
				<td align="center"><a
					href="${pageContext.request.contextPath}/LoadUser?id=${user.id}">Details</a></td>
			</tr>
		</c:forEach>

	</table>
	<br>
	<p align="center">
		<a class="button has-text-centered is-primary" href="${pageContext.request.contextPath}/LoadAllGroups">Back</a>
	</p>
	<br>
	<br>
	<div class="content has-text-centered">
		<%@ include file="footer.jsp"%>
	</div>
	
</body>
</html>