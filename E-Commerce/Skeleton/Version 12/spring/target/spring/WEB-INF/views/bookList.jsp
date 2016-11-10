<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ include file="header.jsp"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
th {
	width:80%;
	padding: 20px 15px;
	text-align: center;
	font-weight: 500;
	font-size: 22px;
	color: #fff;
	text-transform: uppercase;
}

td {
	margin:40px;
	width:80%;
	text-align: center;
	font-weight: 300;
	font-size: 12px;
	color: #fff;
	border-bottom: solid 1px rgba(255, 255, 255, 0.1);
}

body {
	background: -webkit-linear-gradient(left, #25c481, #25b7c4);
	background: linear-gradient(to right, #25c481, #25b7c4);
	font-family: 'Roboto', sans-serif;
}
</style>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>


<body>
	<H1>List of Books</H1>


	<table cellpadding="0" cellspacing="0" border="0">

		<tr>
			<th style="text-align: center;" >IMAGE</th>
			<th style="text-align: center;" >ISBN</th>
			<th style="text-align: center;" >TITLE</th>
			<th style="text-align: center;" >AUTHOR</th>
			<th style="text-align: center;" >PUBLICATIONS</th>
			<th style="text-align: center;" >CATEGORIES</th>
			<th style="text-align: center;" >DELETE</th>
			<th style="text-align: center;" >EDIT</th>
		</tr>





		<c:forEach items="${allbooks}" var="b">
			<tr>
				<td><img src=<c:url value ="/resources/images/${b.isbn}.png" />
					style="height: 128px;" /></td>
				<td><a href="getBooksByIsbn/${b.isbn }">${b.isbn }</a></td>
				<td>${b.title }</td>
				<td>${b.author }</td>
				<td>${b.publisher}</td>
				<td>${b.category.categoryName}</td>
				<security:authorize access="hasRole('ROLE_ADMIN')">

					<td><a href="delete/${b.isbn}"><span
							class="glyphicon glyphicon-trash"></span></a></td>
					<td><a href="admin/book/editBook/${b.isbn }"><span
							class="glyphicon glyphicon-edit"></span></a></td>
				</security:authorize>
			</tr>
		</c:forEach>

	</table>

</body>

</html>