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
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<H1>List of Books</H1>
	<table border=1px>
		<tr>

			<th>IMAGE</th>
			<th>ISBN</th>
			<th>TITLE</th>
			<th>AUTHOR</th>
			<th>PUBLICATIONS</th>
			<th>CATEGORIES</th>
			<th>DELETE</th>

			<th>EDIT</th>
		</tr>

		<c:forEach items="${allbooks}" var="b">
			<tr>
				<td><img src=<c:url value ="/resources/images/${b.isbn}.png" />
					width="10%" /></td>
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