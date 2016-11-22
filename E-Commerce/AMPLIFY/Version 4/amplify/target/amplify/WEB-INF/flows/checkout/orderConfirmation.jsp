<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>

<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<jsp:useBean id="now" class="java.util.Date" />
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- bootstrap -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<link rel="stylesheet"
	href="<c:url value="/resources/css/orderConfirmation.css"/>" />
</head>
<body>
	<div class="bg-img">
		<div class="container">
			<div
				class="col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
				<form:form commandName="order" class="orderConformation">

					<h1>Order Conformation</h1>

					<legend>Receipt</legend>

					<div class="row">
						<div class="col-xs-6 col-sm-6 col-md-6 text-left">
							<address>
								<strong>Shipping Address</strong><br />
								${order.cart.customer.shippingAddress.streetName} <br />
								${order.cart.customer.shippingAddress.city},
								${order.cart.customer.shippingAddress.state} <br />
								${order.cart.customer.shippingAddress.country},
								${order.cart.customer.shippingAddress.zipcode}
							</address>
						</div>
						<div class="col-xs-6 col-sm-6 col-md-6 text-right">
							<p>
								<strong>Shipping Date:</strong>
								<fmt:formatDate type="date" value="${now}" />
							</p>
						</div>
					</div>

					<div class="row">
						<div class="col-xs-6 col-sm-6 col-md-6 text-left">
							<address>
								<strong>Billing Address</strong><br />
								${order.cart.customer.billingAddress.streetName} <br />
								${order.cart.customer.billingAddress.city},
								${order.cart.customer.billingAddress.state} <br />
								${order.cart.customer.billingAddress.country},
								${order.cart.customer.billingAddress.zipcode}
							</address>
						</div>
					</div>

					<div class="row">
						<table class="table text-left">
							<thead>
								<tr>
									<td>Product</td>
									<td>#</td>
									<td class="text-center">Price</td>
									<td class="text-center">Total</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="cartItem" items="${order.cart.cartItem}">
									<tr>
										<td class="col-md-9"><em>${cartItem.product.productName}</em></td>
										<td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
										<td class="col-md-1" style="text-align: center">${cartItem.product.productPrice}</td>
										<td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="text-right grandtotal">
							<h4>
								<strong>Grand Total : ${order.cart.grandTotal} </strong>
							</h4>

						</div>

					</div>


					<input type="hidden" name="_flowExecutionKey" />




					<input type="submit" value="Submit Order"
						class="btn btn-default btn-lg btn-block"
						name="_eventId_orderConfirmed" />
					<button class="btn btn-default btn-lg btn-block"
						name="_eventId_backToCollectShippingDetail">Back</button>
					<button class="btn btn-default btn-lg btn-block"
						name="_eventId_cancel">Cancel</button>

				</form:form>
			</div>
		</div>
	</div>
</body>
</html>







