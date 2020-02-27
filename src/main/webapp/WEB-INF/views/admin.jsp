<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>


<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
      <th scope="col">Quantity</th>
      <th scope="col">Edit</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="product" items="${products}">
    <tr>
      <th scope="row">${product.name}</th>
      <td>${product.quantity}lb</td>
      <td>${product.description}</td>
      <td>$${product.price}</td>
      <td><a href="/edit?id=${product.id}">Edit</a></td>
      <td><a href="/delete?id=${product.id}">Delete</a></td>
    </tr>
    </c:forEach>
  </tbody>
</table>


<%-- 
	<table>
	<td>
	<td>Name</td> <td>Description</td> <td>Price</td> <td>Quantity</td> <td>---</td> <td>---</td>
	</td>
	
	<c:forEach var="product" items="${products}">
		<tr>
		<td>${product.name}</td>
		<td>${product.quantity}lb</td>
		<td> ${product.description}</td>
		<td>Price: $${product.price}</td>
		<td><a href="/edit?id=${product.id}">Edit</a></td>
		<td><a href="/delete?id=${product.id}">Delete</a></td>
		</tr>
	</c:forEach>
	</table> --%>
	
	<a class="btn btn-primary" href="/add" role="button">Add Product</a>
	<a class="btn btn-primary" href="/" role="button">Home</a>

</body>
</html>