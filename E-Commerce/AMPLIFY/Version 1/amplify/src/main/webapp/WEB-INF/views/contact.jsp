<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>
<%@ include file="/WEB-INF/views/header.jsp"%>

<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact</title>


<link rel="stylesheet"
	href="<c:url value="/resources/css/contact.css"/>" />

<link rel="stylesheet" href="<c:url value="/resources/css/footer.css"/>" />

</head>
<body>
	<div class="bg-img">
		<div class="container">
			<div class="title">

				<h1>Get in touch with us</h1>

			</div>
			<div class="img-txt">
				<div class="imgforc">
					<img src="<c:url value="/resources/images/cont1.jpg"> </c:url>"
						alt="image here" class="img-circle" width="300px">
				</div>
				<div class="address">


					<strong>Address</strong><br /> 
					#13, 13th floor, <br /> 
					13th cross, 13th main, <br />
					13th Block Jayanagar,<br />
					Bengaluru - 560 000 <br /><br />
					
					<strong> Phone</strong><br /> 
					1313131313 <br /> <br />
					
					<strong>E-mail</strong><br />
					vasudevtonpe@gmail.com

				</div>


			</div>
		</div>
	</div>


	<div class="footer">
		<div class="container">
			<div class="upper-footer">
				<ul>
					Follow us on &nbsp; &nbsp;
					<li><a href="https://www.facebook.com/"><i
							class="fa fa-facebook facebook"></i></a></li>
					<li><a href="https://twitter.com/login"><i
							class="fa fa-twitter twitter"></i></a></li>
					<li><a href="https://plus.google.com"><i
							class="fa fa-google-plus google-plus"></i></a></li>
					<li><a href="https://www.instagram.com/"><i
							class="fa fa-instagram instagram"></i></a></li>
				</ul>
			</div>

			<div class="footer-nav">
				<div class="col-md-9">© Copywrite AMPLIFY 2016. All Rights
					Reserved.</div>
				<ul class="col-md-3 pull-right">

					<li><a href="home">Home</a></li>
					<li><a href="about">About</a></li>
					<li><a href="privacypolicy">Privacy</a></li>
					<li><a href="terms">Terms</a></li>
				</ul>
			</div>
		</div>
	</div>

</body>
</html>
