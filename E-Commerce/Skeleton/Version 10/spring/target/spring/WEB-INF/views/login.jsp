<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ include file="/WEB-INF/views/header.jsp"%>
<%@ page isELIgnored="false"%>

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
<script type="text/css" >
 body{
	font-family: "Segoe UI";
	background-image:url(/resources/1.jpg);
	background-repeat:no-repeat;
	background-position:center;
	padding: 0px;
	margin: 0px; 
 }
h1{
color:#3399ff;
	font-family: "Impact";
	position: relative;
	top:15%;
	left: 50%;
}
.mainclass {
	color:white;
	background-color:black;
	position: relative;
	padding:50px 20px 15px 20px;
	height:45%;
	width:30%;
	top:15%;
	left: 50%;
}

input[type=text], select {
	width:100%;
	margin:5px 0px 20px 0px;
    padding: 10px 20px;
	outline: none;
	 border-radius: 4px;
 }

input[type=password], select {
	width:100%;
	margin:5px 0px 20px 0px;
    padding: 10px 20px;
	outline: none;
	border-radius: 4px;
 }

input[type=submit] {
    background-color:#3399ff;
    color: white;
	width:100%;
    padding: 20px 20px;
    border: none;
	margin:20px 0px 0px 0px;
	border-radius: 4px;
 }
</script>

</head>
<body>
	<h1>Login</h1>
	<c:if test="${registrationSuccess !=null}">
							${registrationSuccess }
				</c:if>
	<c:if test="${logout!=null }">
							${logout }
				</c:if>
	<div class="mainclass">

		<form name="loginForm" method="post"
			action="<c:url value="/j_spring_security_check"></c:url>">
			<c:if test="${not empty error }">
							${error }
							</c:if>
			Enter Username</br> <input type="text" name="j_username" /> </br> Enter
			Password</br> <input type="password" name="j_password" /> </br> <input
				type="submit" value="Submit">
		</form>

	</div>

</body>
</html>