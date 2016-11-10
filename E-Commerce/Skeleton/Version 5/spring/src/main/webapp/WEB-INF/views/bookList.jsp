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
</head>


<body>
	<H1>List of Books</H1>
	<table cellspacing="100" align="center">
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

		<c:forEach items="${allbooks}" var="b">
			<tr>
				<td><img src=<c:url value ="/resources/images/${b.isbn}.png" />
					style="width: 128px; height: 128px;" /></td>
				<td><a href="getBooksByIsbn/${b.isbn }">${b.isbn }</a></td>
				<td>${b.title }</td>
				<td>${b.author }</td>
				<td>${b.publisher}</td>
				<td>${b.category.cid}</td>
				<td><a href="delete/${b.isbn}"><span
						class="glyphicon glyphicon-trash"></span></a></td>
				<td><a href="admin/book/editBook/${b.isbn }"><span
						class="glyphicon glyphicon-edit"></span></a></td>
			</tr>
		</c:forEach>

	</table>
</body>

</html>