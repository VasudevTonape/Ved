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
</head>
<body>
	<table border=1px>

		<tr>
			<th>ISBN</th>
			<td><c:out value="${book.isbn}" /></td>
		</tr>
		<tr>
			<th>TITLE</th>
			<td><c:out value="${book.title}" /></td>
		</tr>

		<tr>
			<th>AUTHOR</th>
			<td><c:out value="${book.author}" /></td>

		</tr>

		<tr>
			<th>PUBLISHER</th>
			<td><c:out value="${book.publisher}" /></td>
		</tr>

		<tr>
			<th>CATEGORIES</th>
			<td><c:out value="${book.category}" /></td>
		</tr>



	</table>
</body>
</html>