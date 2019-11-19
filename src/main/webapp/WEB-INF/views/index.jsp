<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab24 - HomePage</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="main.css">
</head>
<body>
	<div class="container">
		<h1>Welcome to GC Coffee</h1>
		<a href="/register-page" class="btn btn-dark">Register Here!</a> <br>
		<br>
		<form action="search-name" method="post">
		<!-- Value here references an object appended in the search2 method in the HomeController file -->
			<input type="text" name="name" value="${searchName}"
				placeholder="Find products by name"> <input type="submit"
				value="Search">

			<!-- If the user already provided input for a search query (i.e., the url includes "/search-name"), 
			then append a Clear button (link) to the webpage that 
			takes the user back to the homepage, which displays the full product list -->
			<c:if test="${ not empty searchName }">
				<a href="/" class="btn btn-primary">Clear</a>
			</c:if>
		</form>
		<br>
		<br>
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col"></th>
					<th scope="col">Description</th>
					<th scope="col">Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="p" items="${products}">
					<tr>
						<th scope="row">${p.getName()}</th>
						<td><img src="${p.getImg()}"></td>
						<td>${p.getDescription()}</td>
						<td>$${String.format("%.2f", p.getPrice())}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>