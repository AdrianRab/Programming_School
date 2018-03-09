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

<title>All groups</title>
</head>
<body>
	<div class="content has-text-centered">
		<%@ include file="header.jsp"%>
	</div>	
	<br>
	<br>
	<table class="table is-bordered is-striped is-hoverable"border="1" align="center">
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
	<p align="center">
		<a class="button has-text-centered is-primary" href="${pageContext.request.contextPath}/LoadAllUsers">Back</a>
	</p>
	<br>
	<br>
	<div class="content has-text-centered">
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>