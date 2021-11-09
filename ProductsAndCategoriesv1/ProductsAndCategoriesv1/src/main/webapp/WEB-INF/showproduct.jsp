<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
		rel="stylesheet"integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
		crossorigin="anonymous">
		<title>Product</title>
	</head>
	<body>
		<div class="w-50 container">
			<br>
			<nav>
				<h2 class="p-4 bg-light rounded-top text-primary"><a href="/products/new">New Product</a> | <a href="/categories/new">New Category</a></h2>
			</nav>
			<br>
			<div class="bg-light p-4 rounded-bottom">
			<h3 class="p-3 bg-secondary rounded text-white">Product</h3>
			<h3 class="p-2">${ product.name }</h3>
			<p class="p-2"><strong>Description: </strong>${ product.description }</p>
			<h3 class="p-3 bg-secondary rounded text-white">Categories</h3>
			<ul>
			<c:forEach items="${ product.categories }" var="cat">

				<li>${ cat.name }</li>			
			</c:forEach>
			</ul>
			<h3 class="p-3 bg-secondary rounded text-white">Add Category</h3>
			<form:form action="/associations/categories" method="POST" modelAttribute="association">
				<form:input type="hidden" path="product" value="${ product.id }"/>
				<div class="form-group">
			        <form:label path="category"></form:label>
					<form:errors path="category"></form:errors>			       
			        <form:select class="form-control" path="category">
			        <c:forEach items="${ notInCategories }" var="nonCat">
			        	<option value=${ nonCat.id }>${ nonCat.name }</option>
			        </c:forEach>
			        </form:select>
			    </div>
			    <br>
			    <button class="btn btn-outline-secondary">Add</button>
			</form:form>
			<div class="d-flex justify-content-end">
				<a class="btn btn-primary" href="/">Dashboard</a>
			</div>
		</div>
		</div>
	</body>
</html>

