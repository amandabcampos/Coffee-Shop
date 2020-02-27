<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />
<title>Insert title here</title>
</head>
<body>

	<h1>Welcome to GC Coffee!</h1>
<!-- 	<li><a href="/register">Register</a></li>
	<li><a href="/admin">Administrate Products</a></li>
	<li><a href="/menu">Menu</a></li> -->
	
	<a class="btn btn-primary" href="/register" role="button">Register User</a>
	<a class="btn btn-primary" href="/admin" role="button">Admin Products</a>
	<a class="btn btn-primary" href="/menu" role="button">Menu</a>
	
	
<%-- 	<form action="/search-result">
	<p>Search coffee: <input type="text" placeholder="coffee name" name="search"/></p>
	<button type="submit">Search</button>
	</form>
--%>

</body>
</html>