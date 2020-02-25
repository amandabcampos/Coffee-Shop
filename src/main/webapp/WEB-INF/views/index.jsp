<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Welcome to GC Coffee!</h1>
	<a href="/register">Register!</a>
	
	<form action="/search-result">
	<p>Search coffee: <input type="text" placeholder="coffee name" name="search"/></p>
	<button type="submit">Search</button>
	</form>

	<c:forEach var="product" items="${products}">
		<h3>${product.name}</h3>
		<p>${product.quantity}lb ${product.description}</p>
		<p>Price: $${product.price}</p>
	</c:forEach>

</body>
</html>