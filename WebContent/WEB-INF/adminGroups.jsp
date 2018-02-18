<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin groups</title>
</head>
<body>

	<%@ include file="header.jsp"%>
	
	<br>
	<br>
	<c:if test = "!(${newGroup}==null || ${newGroup}=='')">
		<p>Group has been successfully added.</p>
	</c:if>
		<c:if test = "!(${editedGroup}==null || ${editedGroup}=='')">
		<p>Group has been successfully changed.</p>
	</c:if>
	
	<br>
	<table border="1">
		<tr><td colspan = "3" align="center"><a
		href="${pageContext.request.contextPath}/adminAddGroup.jsp">Add new group</a></td></tr>
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
					href="${pageContext.request.contextPath}/adminEditGroup.jsp?groupId=${group.id}">Edit</a></td>
			</tr>
		</c:forEach>

	</table>

	<br>
	<br>
	
	<%@ include file="footer.jsp"%>

</body>
</html>