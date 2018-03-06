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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/WebContent/js/programmingSchool.js"></script>

<title>Programming school</title>
</head>

<body style="background-color: hsl(204, 8%, 95%)">

	<header class="header">
	<div class="container">
		<div class="content has-text-centered">
			<%@ include file="header.jsp"%>
		</div>
	</div>
	</header>

	<div class="dropdown is-active" id="dropdown">
	 <div class="dropdown-trigger">
	    <button class="button is-warning" aria-haspopup="true" aria-controls="dropdown-menu" id="expandCollapse">
	      <span><i class="fas fa-puzzle-piece"></i> Admin menu</span>
	      <span class="icon is-small">
	        <i class="fas fa-angle-down" aria-hidden="true"></i>
	      </span>
	    </button>
	  </div>
	  <div class="dropdown-menu" id="dropdown-menu" role="menu">
	    <div class="dropdown-content">
	      <a href="${pageContext.request.contextPath}/AdminExercisesPanel" class="dropdown-item  is-primary">
	        Admin exercises
	      </a>
	      <hr class="dropdown-divider">
	      <a href="${pageContext.request.contextPath}/AdminGroupPanel" class="dropdown-item  is-primary">
	        Admin groups
	      </a>
	      <hr class="dropdown-divider">
	      <a href="${pageContext.request.contextPath}/AdminUserPanel" class="dropdown-item is-primary">
	        Admin users
	      </a>
	    </div>
	  </div>
	</div>
	<br>
	<hr>
	<br>
	<br>
	<div class="columns">
		<div class="column">
		</div>
		<div class="column">
			<a class="button is-fullwidth has-text-centered is-primary is-rounded is-large"
				href="${pageContext.request.contextPath}/LoadAllSolutions">Solutions</a>
		</div>
		<div class="column"></div>
		<br>
		<div class="column">
			<a class="button is-fullwidth has-text-centered is-primary is-rounded is-large"
				href="${pageContext.request.contextPath}/LoadAllGroups">Groups</a>
		</div>
		<div class="column"></div>
		<br>
		<div class="column">
			<a class="button is-fullwidth has-text-centered is-primary is-rounded is-large"
				href="${pageContext.request.contextPath}/LoadAllUsers">Users</a>
		</div>
		<div class="column"></div>
	</div>
	<br>
	<br>
	<br>

	<footer class="footer">
	<div class="container">
		<div class="content has-text-centered">
			<%@ include file="footer.jsp"%>
		</div>
	</div>
	</footer>
	<br>
</body>
</html>