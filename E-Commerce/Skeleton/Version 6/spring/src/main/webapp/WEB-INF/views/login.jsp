<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/views/header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form name="loginForm" method="post" action="j_spring_security_check">
		<c:if test="${param.error != null }">
${error }
</c:if>
		Enter Username <input type="text" name="j_username" /> Enter Password<input
			type="text" name="j_password" /> <input type="submit" value="submit"
			class="btn btn-default" />
	</form>

</body>
</html>