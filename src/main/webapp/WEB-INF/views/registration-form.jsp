<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h2>Please fill in the form to register</h2>
<form action="/register" method="post">
	<p>First Name: <input type="text" name="firstName" /></p>
	<p>Last Name: <input type="text" name="lastName" /></p>
	<p>Email: <input type="email" name="email" /></p>
	<p>Phone Number: <input type="text" name="phoneNumber" /></p>
	<p>Password: <input type="password" name="password" /></p>
	
	<button type="submit">Register</button>
	

</form>

</body>
</html>