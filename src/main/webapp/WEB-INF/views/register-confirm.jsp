<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>Lab24 - HomePage</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div id="thanksForRegistering">
			<h4>Thanks for registering, ${userInfo.getFirstName()}!</h4>
			<p>Here's your account information:</p>
			<p>Name: ${userInfo.getFirstName()} ${userInfo.getLastName()}</p>
			<p>Email: ${userInfo.getEmail()}</p>
			<p>Birthday: ${userInfo.getBirthday()}</p>
			<p>Username: ${userInfo.getUsername()}</p>
			<p>Password: ${userInfo.getPassword()}</p>
		</div>
		<a href="/" class ="btn btn-dark">Go Back Home</a>
	</div>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>