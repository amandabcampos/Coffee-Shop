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
<link rel="stylesheet" href="/style.css" />
<title>Insert title here</title>
</head>
<body>


<form action="/product-search">
  <div class="form-group">
    <label for="exampleInputPassword1">Search Product</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="name" placeholder="Product name">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
<br/>

<!-- 	<form action="/product-search">
	<p>Search Product<input type="text" name="name" placeholder="product name"/></p>
	<button type="submit">Submit</button>
	</form> -->
	
	<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">Product</th>
      <th scope="col">Image</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="product" items="${products}">
    <tr>
      <th scope="row">${product.name}<br/>${product.quantity}lb<br/>
		${product.description}<br/>$${product.price}</th>
      <td><img src="${product.image}"/></td>
    </tr>
    </c:forEach>
  </tbody>
</table>
	
<%-- 	
	
	<c:forEach var="product" items="${products}">
		<h3>${product.name}</h3>
		<p>${product.quantity}lb ${product.description}</p>
		<p>Price: $${product.price}</p>
		<p><img src="${product.image}"/></p>
	</c:forEach>  --%>
	
	<a class="btn btn-primary" href="/" role="button">Home</a>


</body>
</html>