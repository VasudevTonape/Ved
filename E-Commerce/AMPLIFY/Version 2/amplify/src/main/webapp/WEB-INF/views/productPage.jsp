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
<title>Product Page</title>
<script src="<c:url value="/resources/js/controller.js" /> "></script>

<link rel="stylesheet" href="<c:url value="/resources/css/footer.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/productPage.css"/>" />


</head>
<body>

	<div class="bg-img">
		<div class="container-fluid ">
			<div
				class="productdetails col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">


				<div data-ng-app="myapp">

					<div class="productimage">
						<c:url var="url"
							value="/resources/images/${product.productId}.png"></c:url>
						<img id="myImg" src="${url }" width="300" height="300">


						<!-- The Modal -->
						<div id="myModal" class="modal">
							<span class="close">×</span> <img class="modal-content"
								src="${url }" id="img01">

						</div>
					</div>
				</div>

				<div data-ng-controller="productController" class="addcarticon">
					<c:url value="/cart/add/${product.productId }" var="url"></c:url>
					<security:authorize access="hasRole('ROLE_USER')">
						<a href="${url }" class="btn btn-default btn-lg"> <span
							class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
						</a>
					</security:authorize>
				</div>

				<div class="details">
					<br />
					<h2>${product.productName }</h2>
					by ${product.productManufacturer } <br /> <br />

					<h4>Price</h4>
					${product.productPrice } <br /> <br />
					<h4>Unit In Stock</h4>
					${product.unitInStock } <br /> <br />
					<h4>Description</h4>
					${product.productDescription } <br /> <br />
					<h4>Category</h4>
					${product.category.categoryName } <br /> <br />
					<h4>Product ID</h4>
					${product.productId } <br /> <br /> <br />

				</div>
				<div class="back">
					<a href="<c:url value="/productList" />"
						class="btn btn-default btn-lg">Back</a>
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
	<script src="<c:url value="/resources/js/productPage.js" />"></script>
</body>
</html>