<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Users</title>
</head>
<body>
	
	<%@ include file="header.jsp"%>
	
	<br>
	<br>
	<c:if test = "!(${newUser}==null || ${newUser}=='')">
		<p>User has been successfully added.</p>
	</c:if>
		<c:if test = "!(${editedUser}==null || ${editedUser}=='')">
		<p>User data has been successfully changed.</p>
	</c:if>
	
	<br>
	<table border="1">
		<tr><td colspan = "5" align="center"><a
		href="${pageContext.request.contextPath}/adminAddUser.jsp">Add new user</a></td></tr>
		<tr>
			<th>User ID</th>
			<th>Name</th>
			<th>List of all participants</th>
			<th>User group</th>
			<th>Edit user</th>
		</tr>
		<c:forEach items="${users}" var="user">
			<tr>
				<td align="center">${user.id}</td>
				<td align="center">${user.username}</td>
				<td align="center">${user.email}</td>
				<td align="center">${user.group}</td>
				<td align="center"><a
					href="${pageContext.request.contextPath}/adminEditUser.jsp?userId=${user.id}">Edit</a></td>
			</tr>
		</c:forEach>

	</table>

	<br>
	<br>
	
	<%@ include file="footer.jsp"%>

</body>
</html>