<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta charset="utf-8" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Header</title>


<!-- bootstrap -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<link rel="stylesheet"
	href="<c:url value="/resources/css/scrolling-nav.css"/>" />


<!-- Scrolling Nav JavaScript -->
<!-- for smooth scrolling effect -->
<script
	src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"/>"></script>
<!-- for nav bar to reduce size -->
<script src="<c:url value="/resources/js/scrolling-nav.js"/>"></script>


<!-- for social media glyphs -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

</head>


<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
	<header>

		<!-- Navigation bar-->

		<nav class="navbar-inverse navbar-default navbar-fixed-top"
			role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!-- logo and unordered list -->

					<a class="page-scroll" href="<c:url value="/home" ></c:url>"><img
						src="<c:url value="/resources/images/logo2.png"></c:url>"
						alt="logo here" height="50px" /> </a>

				</div>

				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav  navbar-right">

						<li><a class="page-scroll"
							href="<c:url value="/about" > </c:url>">ABOUT</a></li>

						<li><a class="page-scroll"
							href="<c:url value="/contact" > </c:url>">CONTACT US</a></li>



						<c:if test="${pageContext.request.userPrincipal.name!=null}">

							<security:authorize access="hasRole('ROLE_ADMIN')">
								<li><a class="page-scroll"
									href="<c:url value="/admin/product/addProduct"/>">ADD
										PRODUCT</a></li>
							</security:authorize>

							<li><a class="page-scroll"
								href="<c:url value="/productList"/>">PRODUCTS</a></li>

							<security:authorize access="hasRole('ROLE_USER')">
								<li><a class="page-scroll"
									href="<c:url value="/cart/getCartId"/>"><span
										class="glyphicon glyphicon-shopping-cart"> </span> CART </a></li>
							</security:authorize>

							<li><a
								href="<c:url value="/j_spring_security_logout"></c:url>">LOGOUT</a></li>

						</c:if>


						<c:if test="${pageContext.request.userPrincipal.name ==null }">
							<li><a href="<c:url value="/login"></c:url>">LOGIN</a></li>
							<li><a
								href="<c:url value="/customer/registration" ></c:url>">REGISTER</a>
							</li>
						</c:if>


					</ul>
				</div>
				<!-- ends logo and unordered list -->

			</div>
			<!-- /.container -->
		</nav>
	</header>



</body>
</html>