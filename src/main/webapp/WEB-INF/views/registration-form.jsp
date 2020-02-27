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
<h2>Please fill in the form to register</h2>
<form action="/register" method="post">

  <div class="form-group">
    <label for="firstname">First Name: </label>
    <input type="text" class="form-control" id="firstname" name="firstName">
  </div>
  <div class="form-group">
    <label for="lastname">Last Name: </label>
    <input type="text" class="form-control" id="lastname" name="lastName">
  </div>
  <div class="form-group">
    <label for="email">Email: </label>
    <input type="email" class="form-control" id="email" name="email">
  </div>
  <div class="form-group">
    <label for="phonenumber">Phone Number: </label>
    <input type="text" class="form-control" id="phonenumber" name="phoneNumber">
  </div>
  <div class="form-group">
    <label for="password">Password: </label>
    <input type="password" class="form-control" id="password" name="password">
  </div>
  <button type="submit" class="btn btn-primary">Register</button>
  <a class="btn btn-primary" href="/" role="button">Home</a>


<!-- 	<p>First Name: <input type="text" name="firstName" /></p>
	<p>Last Name: <input type="text" name="lastName"/></p>
	<p>Email: <input type="email" name="email"/></p>
	<p>Phone Number: <input type="text" name="phoneNumber"/></p>
	<p>Password: <input type="password" name="password"/></p>
	
	<button type="submit">Register</button>	 -->

</form>
</div>

</body>
</html>