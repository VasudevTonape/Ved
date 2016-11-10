<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ include file="/WEB-INF/views/header.jsp"%>
<!DOCTYPE html >
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js"></c:url>">
	
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
table {
	border-left: 10px collapse #ffff00;
	background-color: #ffff00;
	width: 80%;
}

tr:hover {
	background-color: #d6d6c2;
}

th {
	background: #800000;
	color: white;
	height: 50px;
}

td {
	padding: 400px;
	text-align: center;
}
</style>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body>
	<h1>List of Books</h1>
	<div ng-app="myapp" ng-controller="bookController"
		ng-init="getAllBooks()">

		Search: <input type="text" ng-model="searchTxt">


		<table>
			<tr>
				<th style="text-align: center;">IMAGE</th>
				<th style="text-align: center;">ISBN</th>
				<th style="text-align: center;">TITLE</th>
				<th style="text-align: center;">AUTHOR</th>
				<th style="text-align: center;">PUBLICATIONS</th>
				<th style="text-align: center;">CATEGORIES</th>
				<th style="text-align: center;">DELETE</th>
				<th style="text-align: center;">EDIT</th>
			</tr>


			<tr ng-repeat="book in books | filter:searchTxt ">
				<c:url value="resources/images/{{b.isbn}}.png" var="src" />
				<td><img src="${src }" /> style="width: 128px; height: 128px;"
					/></td>
				<td><a href="getBooksByIsbn/{{book.isbn }}">${book.isbn }</a></td>
				<td>{{book.title }}</td>
				<td>{{book.author }}</td>
				<td>{{book.publisher }}</td>
				<td>{{book.category.categoryName }}</td>

				<security:authorize access="hasRole('ROLE_ADMIN')">

					<td><a href="delete/{{b.isbn }}"><span
							class="glyphicon glyphicon-trash"></span></a></td>
					<td><a href="admin/book/editBook/{{b.isbn }}"><span
							class="glyphicon glyphicon-edit"></span></a></td>
				</security:authorize>

			</tr>
		</table>
	</div>
	</div>
</body>
</html>
