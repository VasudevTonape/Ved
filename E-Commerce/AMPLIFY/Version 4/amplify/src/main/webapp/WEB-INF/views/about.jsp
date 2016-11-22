<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html >

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
<title>About</title>

<link rel="stylesheet" href="<c:url value="/resources/css/about.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/css/footer.css"/>" />

</head>
<body>
	<div class="bg-img">
		<div class="container">
			<div class="title col-md-6">

				<h1>About us</h1>

			</div>


			<div class="title2 col-md-6">
				<h3>People Aren't Hearing All The Music</h3>
				<br />
				<p>Amplify is a global brand bringing the noise and pushing
					boundaries far and wide. Through its family of premium consumer
					headphones, Amplify has introduced an entirely new generation to
					the possibilities of premium sound entertainment.</p>
				<p>We've successfully modernized audio and leveled the playing
					field by making high fidelity affordable and high style attainable
					. More importantly we've designed our headphones to be used and
					abused, not put on a shelf or in some fancy case. They're made to
					be your trusty sidekick riding with you through thick and thin as
					you charge hard at everything you do.</p>
				<p>Our goal is simple: innovate to solve real problems and
					democratize amazing audio experiences with quality and style. For
					people like you-like all of us. We inspire life at full volume.</p>
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