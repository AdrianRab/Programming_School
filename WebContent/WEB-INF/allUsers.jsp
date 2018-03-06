<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.2/css/bulma.min.css" />
<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>All users</title>
</head>
<body style="background-color: hsl(204, 8%, 95%)">
	<div class="content has-text-centered">
		<%@ include file="header.jsp"%>
	</div>
	<br>
	<br>
	<div class="content has-text-centered">
		<table class="table" border="1">
			<tr  class="is-primary">
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
	</div>
	<br>
	<br>
	<div class="content has-text-centered">
		<%@ include file="footer.jsp"%>
	</div>
	
</body>
</html>