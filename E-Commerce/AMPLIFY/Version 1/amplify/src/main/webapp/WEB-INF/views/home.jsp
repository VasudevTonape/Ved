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
<title>Home</title>

<link rel="stylesheet" href="<c:url value="/resources/css/footer.css"/>" />

</head>

<body>


	<!-- Intro Section -->
	<section id="intro" class="intro-section">

		<!-- Carousal Starts -->

		<div id="mycarousel" class="carousel slide" data-ride="carousel"
			data-interval="4000" data-pause="false">

			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#mycarousel" data-slide-to="0" class="active"></li>
				<li data-target="#mycarousel" data-slide-to="1"></li>
				<li data-target="#mycarousel" data-slide-to="2"></li>
				<li data-target="#mycarousel" data-slide-to="3"></li>
				<li data-target="#mycarousel" data-slide-to="4"></li>
				<li data-target="#mycarousel" data-slide-to="5"></li>
				<li data-target="#mycarousel" data-slide-to="6"></li>
			</ol>

			<!-- Wrapper for slides -->

			<div class="carousel-inner" role="listbox">

				<div class="item active">
					<img src="<c:url value="/resources/images/c1.jpg" ></c:url>"
						alt="..." height="100%" />
					<div class="carousel-caption">
						<!-- put a caption for the carousel -->
					</div>
				</div>
				<div class="item">
					<img src="<c:url value="/resources/images/c2.jpg" ></c:url>"
						alt="..." />
					<div class="carousel-caption">
						<!-- put a caption for the carousel -->
					</div>
				</div>
				<div class="item">
					<img src="<c:url value="/resources/images/c3.jpg" ></c:url>"
						alt="..." />
					<div class="carousel-caption">
						<!-- put a caption for the carousel -->
					</div>
				</div>
				<div class="item">
					<img src="<c:url value="/resources/images/c4.jpg" ></c:url>"
						alt="..." />
					<div class="carousel-caption">
						<!-- put a caption for the carousel -->
					</div>
				</div>
				<div class="item">
					<img src="<c:url value="/resources/images/c5.jpg" ></c:url>"
						alt="..." />
					<div class="carousel-caption">
						<!-- put a caption for the carousel -->
					</div>
				</div>
				<div class="item">
					<img src="<c:url value="/resources/images/c6.jpg" ></c:url>"
						alt="..." />
					<div class="carousel-caption">
						<!-- put a caption for the carousel -->
					</div>
				</div>
				<div class="item">
					<img src="<c:url value="/resources/images/c7.jpg" ></c:url>"
						alt="..." />
					<div class="carousel-caption">
						<!-- put a caption for the carousel -->
					</div>
				</div>
			</div>

		</div>


		<!-- Carousal ends -->

	</section>




	<!-- About Section -->
	<section id="about" class="about-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h1>About Section</h1>
				</div>
			</div>
		</div>
	</section>

	<!-- Services Section -->
	<section id="services" class="services-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h1>Services Section</h1>
				</div>
			</div>
		</div>
	</section>

	<!-- Contact Section -->
	<section id="contact" class="contact-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h1>Contact Section</h1>
				</div>
			</div>
		</div>
	</section>

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