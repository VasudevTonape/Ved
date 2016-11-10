<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<html>

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js">
	
</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<div data-ng-app="myapp">
		<c:url var="url" value="/resources/images/${book.isbn}.png"></c:url>
		<img src="${url }" /><br> ISBN : ${book.isbn } <br> TITLE :
		${book.title } <br> Price : ${book.price } <br>
		<c:url value="/cart/add/${book.isbn }" var="url"></c:url>
		<div data-ng-controller="bookController">
			<security:authorize access="hasRole('ROLE_USER')">
				<a href="#" data-ng-click="addToCart(${book.isbn})"
					class="btn btn-info btn-lg"> <span
					class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</a>
			</security:authorize>

			<a href="<c:url value="/bookList"></c:url>">Back</a>
		</div>
	</div>
	<script src="<c:url value="/resources/js/controller.js" /> "></script>


</body>
</html>