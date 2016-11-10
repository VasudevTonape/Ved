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
</head>
<body>
	<div ng-app="myapp">
		<c:url var="url" value="/resources/images/${bookObj.isbn}.png"></c:url>
		<img src="${url }" /><br> ISBN : ${bookObj.isbn } <br>
		TITLE : ${bookObj.title } <br> Price : ${bookObj.price } <br>
		<c:url value="/cart/add/${bookObj.isbn }" var="url"></c:url>
		<div ng-controller="bookController">
			<security:authorize access="hasRole('ROLE_USER')">
				<a href="${url }" class="btn btn-warning btn-large"><span
					class="glyphicon glyphicon-shopping-cart"></span></a>
			</security:authorize>

			<a href="<c:url value="/getAllBooks"></c:url>">Back</a>
		</div>
	</div>
	<script src="<c:url value="/resources/js/controller.js" /> "></script>

</body>
</html>