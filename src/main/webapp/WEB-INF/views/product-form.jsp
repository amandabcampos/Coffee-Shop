<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/spacelab/bootstrap.min.css" rel="stylesheet" integrity="sha384-nl8CRcNYOGaXP68QRJeVTXCWAhwqBhRha0QbuubX1qDQpGT3GgclpvyzkR2JzyfZ" crossorigin="anonymous"/>
</head>
<body>

<div class="container">
<h2>Add/Edit Product</h2>
<form method="post">

  <div class="form-group">
    <label for="name">Name: </label>
    <input type="text" class="form-control" id="name" name="name">
  </div>
  <div class="form-group">
    <label for="description">Description: </label>
    <input type="text" class="form-control" id="description" name="description">
  </div>
  <div class="form-group">
    <label for="quantity">Quantity: </label>
    <input type="number" class="form-control" id="quantity" name="quantity">
  </div>
  <div class="form-group">
    <label for="price">Price: </label>
    <input type="number" class="form-control" id="price" name="price" step="0.01">
  </div>
  <button type="submit" class="btn btn-primary">Add/Edit</button>
  <a class="btn btn-primary" href="/" role="button">Home</a>


</form>
</div>



</body>
</html>