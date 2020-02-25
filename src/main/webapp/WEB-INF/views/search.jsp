<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:if test="${item!=null}">
    <h3>${item.name}</h3>
	<p>${item.quantity}lb ${item.description}</p>
	<p>Price: $${item.price}</p>
</c:if>

	<p><a href="/">Home</a></p>

</body>
</html>