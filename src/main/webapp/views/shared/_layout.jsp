<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie APP</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="css/style.css">

</head>
<body>

	<div id="shell">
		<div id="header">


			<div class="w3-bar w3-white w3-card" id="myNavbar">
				<a href="${appName}" class="w3-bar-item w3-button w3-wide">MOVIE
					WORLD</a>
				<!-- Right-sided navbar links -->

				<div class="w3-right w3-hide-small">
					<security:authorize access="!isAuthenticated()">
						<a href="${appName}" class="w3-bar-item w3-button">HOME</a>
						<a href="${appName}movie/index" class="w3-bar-item w3-button"><i
							class="fa fa-user"></i> MOVIE</a>
						<a href="${appName}actor/index" class="w3-bar-item w3-button"><i
							class="fa fa-th"></i> ACTOR</a>
						<a href="${appName}login" class="w3-bar-item w3-button"><i
							class="fa fa-usd"></i> SIGN IN</a>
						<a href="${appName}user/registration"
							class="w3-bar-item w3-button"><i class="fa fa-envelope"></i>
							SIGN UP</a>
					</security:authorize>
					<security:authorize access="isAuthenticated()">
						<a href="${appName}" class="w3-bar-item w3-button">HOME</a>
						<a
							href="${appName}movie/add"
							class="w3-bar-item w3-button"><i class="fa fa-th"></i> ADD
							MOVIE</a>
						<a href="${appName}movie/index" class="w3-bar-item w3-button"><i
							class="fa fa-user"></i> MOVIE</a>
						<a href="${appName}actor/add" class="w3-bar-item w3-button"><i
							class="fa fa-th"></i> ADD ACTOR</a>
						<a href="${appName}actor/index" class="w3-bar-item w3-button"><i
							class="fa fa-th"></i> ACTOR</a>
						<a
							href="${appName}user/profile?id=<security:authentication property="principal.id"/>"
							class="w3-bar-item w3-button"><i class="fa fa-th"></i>
							WELCOME <security:authentication property="principal.username"/></a>
						<a href="${appName}logout" class="w3-bar-item w3-button"><i
							class="fa fa-th"></i>LOGOUT</a>

							
					</security:authorize>
				</div>
				<!-- Hide right-floated links on small screens and replace them with a menu icon -->

			</div>

		</div>
		<br>
	</div>
	<!-- Footer -->

	<c:if test="${message != null}">

		<div class="alert alert-primary fade show" role="alert">
			${message}</div>
		<%
		session.removeAttribute("message");
		%>
	</c:if>


	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script type="text/javascript">
		$('.fade').slideUp(5000);
	</script>
</body>
</html>

