<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />
</head>
<body>

<c:choose>
    <c:when test="${size==0}">
        <p>Product not found</p>
    </c:when>    
    <c:otherwise>
        <c:forEach var="product" items="${products}">
		<h3>${product.name}</h3>
		<p>${product.quantity}lb ${product.description}</p>
		<p>Price: $${product.price}</p>
		<p><img src="${product.image}"/></p>
	</c:forEach> 
    </c:otherwise>
</c:choose>
	
<a class="btn btn-primary" href="/" role="button">Home</a>
<a class="btn btn-primary" href="/menu" role="button">Menu</a>

</body>
</html>