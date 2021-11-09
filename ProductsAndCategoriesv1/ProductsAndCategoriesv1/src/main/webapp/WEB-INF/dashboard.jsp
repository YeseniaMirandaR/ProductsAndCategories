<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
	rel="stylesheet"integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
	crossorigin="anonymous">
	<title>Products and Categories</title>
	</head>
	<body>
		<div class="w-50 container">
			<br>
			<h1 class="p-4 bg-secondary rounded text-white">Products and Categories</h1>
			<br>
			<nav>
				<h2 class="p-4 bg-light rounded-top text-primary"><a href="/products/new">New Product</a> | <a href="/categories/new">New Category</a></h2>
			</nav>
			<br>
			<div class="bg-light rounded-bottom">
				<div class=p-4>
					<h2>All Products</h2>
					<ul class="list-unstyled">
					<c:forEach items="${ products }" var="product">
						<li><a href="/${ product.id }">${ product.name }</a></li>		
					</c:forEach>
					</ul>
				</div>
				<div class="p-4">
					<h2>All Categories</h2>
					<ul class="list-unstyled">
					<c:forEach items="${ categories }" var="category">
						<li><a href="categories/${ category.id }">${ category.name }</a></li>		
					</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>