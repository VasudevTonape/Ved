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
<title>Product List</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>

<link rel="stylesheet" href="<c:url value="/resources/css/footer.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/productList.css"/>" />

</head>
<body>

	<div class="bg-img">
		<section>
			<div class="container">
				<div class="title">

					<h1>List of all Products</h1>

				</div>




				<div data-ng-app="myapp">
					<div data-ng-controller="productController"
						data-ng-init="getAllProducts()">

						<div class="search">
							<p>Search:</p>
							<input type="text" class="form-control"
								data-ng-model="searchCondition">
						</div>
						<div class="products">

							<div class="eachproduct"
								data-ng-repeat="b in products | filter:searchCondition">

								<div class="image">
									<c:url value="resources/images/{{b.productId}}.png" var="src" />
									<img src="${src }" style="width: 200px" />
								</div>

								<div class="details">

									<h4>
										<strong>{{b.productName}}</strong>
									</h4>
									by {{b.productManufacturer }}
									<h4>Rs. {{b.productPrice }}</h4>
									<p>Category -> {{b.category.categoryName}}</p>
									<a href="getProductsByProductId/{{b.productId }}">View</a>
								</div>


								<div class="foradmin">
									<security:authorize access="hasRole('ROLE_ADMIN')">

										<a href="admin/delete/{{b.productId}}"><span
											class="glyphicon glyphicon-trash"></span> Delete</a> &nbsp;
										<a href="admin/product/editProduct/{{b.productId}}"><span
											class="glyphicon glyphicon-edit">Edit</span></a>

									</security:authorize>
								</div>
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