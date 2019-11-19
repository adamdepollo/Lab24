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
	<link rel="stylesheet"
	href="main.css">
</head>
<body>
	<div class="container">
		<div id="registrationForm">
			<h4>Registration</h4>
			<form action="register-user" method="post">
				<label>First Name:</label><input required class="form-control" type="text" name="firstName"
					placeholder="John"><br><label>Last Name:</label><input required
					class="form-control" type="text" name="lastName"
					placeholder="Doe"><br><label>Email:</label><input required type="email"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="johndoe@gmail.com" name="email"><br>
					<label>Birthday:</label>
					<input required class="form-control" type="date"
						id="example-date-input" name="birthday">
				<br>
				<fieldset>
					<legend class="scheduler-border">Account Information</legend>
					<div class="form-group">
						<input required type="text" class="form-control" placeholder="Username"
							name="username">
					</div>
					<div class="form-group">
						<input required type="password" class="form-control" id="password"
							placeholder="Password" name="password">
					</div>
					<div class="alert alert-danger" id="passWarn" role="alert">Sorry,
						your passwords don't match. Please try again!</div>
					<div class="form-group">
						<input required type="password" class="form-control" id="confirmPassword"
							placeholder="Confirm Password">
					</div>
				</fieldset>
				<input type="submit" class="btn btn-dark" id="register">
			</form>
		</div>
	</div>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>