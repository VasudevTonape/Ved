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
<title>Cart</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js">
	
</script>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/footer.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/css/cart.css"/>" />
</head>
<body>

	<div class="bg-img">
		<div class="container">
			<div class="title">

				<h1>Cart</h1>
				<p>All the selected products in your shopping cart</p>
			</div>




			
				<div data-ng-app="myapp" data-ng-controller="productController" class="cart-table">

					<div data-ng-init="getCart(${cartId})">
						<legend>List of products purchased</legend>
						<div>
							<a class="btn btn-danger pull-left" data-ng-click="clearCart()">
								<span class="glyphicon glyphicon-remove-sign"> </span> Clear
								Cart
							</a>
						</div>



						<table class="table">
							<thead>

								<tr>
									<th>PRODUCT NAME</th>
									<th>QUANTITY</th>
									<th>PRICE</th>
									<th>TOTAL PRICE</th>
									<th></th>
								</tr>
							</thead>
							<tr data-ng-repeat="cartitem in cart.cartItem">
								<td>{{cartitem.product.productName}}</td>
								<td>{{cartitem.quantity}}</td>
								<td>{{cartitem.product.productPrice}}</td>
								<td>{{cartitem.totalPrice}}</td>
								<td><a href="#" class="label label-danger"
									data-ng-click="removeFromCart(cartitem.cartItemId)"> <span
										class="glyphicon glyphicon-remove"></span>remove
								</a></td>
							</tr>

						</table>
						GrandTotal Price {{calculateGrandTotal()}}
					</div>
					<c:url value="/productList" var="url"></c:url>
					<a href="${url }" class="btn btn-default">Continue shopping</a>


					<c:url value="/order/${cartId}" var="url"></c:url>
					<a href="${url}">Checkout </a>


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