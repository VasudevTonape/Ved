<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ include file="header.jsp"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js"></c:url>">
	
</script>
</head>


<body>
	rb5tbeybteb

	<H1>List of Books</H1>
	<div ng-app="myapp" ng-controller="bookController"
		ng-init="getAllBooks()">

		Search: <input type="text" ng-model="searchTxt"> IMAGE ISBN
		TITLE AUTHOR PUBLICATIONS CATEGORIES DELETE EDIT


		<div ng-repeat="book in books">
			sdcsdc
			<c:url value="resources/images/{{b.isbn}}.png" var="src" />
			<img src="{{src }}" style="width: 128px; height: 128px;" /> <a
				href="getBooksByIsbn/{{book.isbn }}">{{book.isbn }}</a>
			{{book.title}} {{book.author }} {{book.publisher }}
			{{book.category.categoryName }}


			<security:authorize access="hasRole('ROLE_ADMIN')">

				<a href="delete/{{b.isbn }}"><span
					class="glyphicon glyphicon-trash"></span></a>
				<a href="admin/book/editBook/{{b.isbn }}"><span
					class="glyphicon glyphicon-edit"></span></a>
			</security:authorize>
		</div>
	</div>
</body>

</html>