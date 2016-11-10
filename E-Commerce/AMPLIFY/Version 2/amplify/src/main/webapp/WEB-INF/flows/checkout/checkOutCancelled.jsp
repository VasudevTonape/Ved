<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ include file="/WEB-INF/views/header.jsp"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">



<link rel="stylesheet"
	href="<c:url value="/resources/css/checkOutCancelled.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/css/footer.css"/>" />

</head>
<body>


	<div class="bg-img">
		<section>
			<div class="container">

				<div
					class="checkOutCancelled container-fluid col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-12">
					<h1>Checkout cancelled!</h1>
					<p>Your checkout process is cancelled. You may continue
						shopping.</p>
				</div>
				<div class="col-md-6 home col-md-offset-3">
					<a href="<c:url value="/home" />"
						class="btn btn-default btn-lg btn-block">Back to Home</a>
				</div>
			</div>
		</section>

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

