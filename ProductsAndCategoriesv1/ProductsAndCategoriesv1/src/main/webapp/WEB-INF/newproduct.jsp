<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" 
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" href="/css/main.css" />
		<title>Create Product</title>
	</head>
	<body>
		<div class="w-50 container">
			<br>
			<h2 class="p-4 bg-light rounded-top">New Product</h2>
			<div class="p-4 bg-light rounded-bottom">
			<form:form action="/createproduct" method="post" modelAttribute="products">
			    <div class="form-group">
			        <form:label path="name"><strong>Name:</strong></form:label>
			        <form:errors path="name"/>
			        <form:input class="form-control" path="name"/>
			    </div>
			    <div class="form-group">
			        <form:label path="description"><strong>Description:</strong></form:label>
			        <form:errors path="description"/>
			        <form:textarea class="form-control" path="description"/>
			    </div>
				<div class="form-group">
			        <form:label path="price"><strong>Price:</strong></form:label>
			        <form:errors path="price"/> 
			        <form:input class="form-control" path="price"/>
			    </div>
			    <div>
			    <input class="btn btn-success text-white"type="submit" value="Create"/>
			    </div>
			</form:form>
			<div class="d-flex justify-content-end">
				<a class="btn btn-primary" href="/">Dashboard</a>
			</div>
			</div>
		</div>
	</body>
</html>

