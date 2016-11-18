<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

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

<!-- bootstrap -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<link rel="stylesheet"
	href="<c:url value="/resources/css/collectShippingDetail.css"/>" />
</head>
<body>

	<div class="bg-img">
		<section>
			<div class="container">

				<div
					class="shippingaddress container-fluid col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-12">



					<form:form commandName="order">

						<legend>Shipping Details</legend>

						<div class="form-group">
							<label for="shippingStreet">Street Name</label>
							<form:input path="cart.customer.shippingAddress.streetName"
								id="shippingStreet" class="form-control" />
						</div>

						<div class="form-group">
							<label for="shippingApartmentNumber">Apartment Number</label>
							<form:input path="cart.customer.shippingAddress.apartmentNumber"
								id="shippingApartmentNumber" class="form-control" />
						</div>

						<div class="form-group">
							<label for="shippingCity">City</label>
							<form:input path="cart.customer.shippingAddress.city"
								id="shippingCity" class="form-control" />
						</div>

						<div class="form-group">
							<label for="shippingState">State</label>
							<form:input path="cart.customer.shippingAddress.state"
								id="shippingState" class="form-control" />
						</div>

						<div class="form-group">
							<label for="shippingCountry">Country</label>
							<form:input path="cart.customer.shippingAddress.country"
								id="shippingCountry" class="form-control" />
						</div>

						<div class="form-group">
							<label for="shippingZip">ZipCode</label>
							<form:input path="cart.customer.shippingAddress.zipcode"
								id="shippingZip" class="form-control" />
						</div>

						<input type="hidden" name="_flowExecutionKey" />

						<br />
						<br />

						<input type="submit" value="Next"
							class="btn btn-default btn-lg btn-block"
							name="_eventId_shippingDetailCollected" />

						<button class="btn btn-default btn-lg btn-block"
							name="_eventId_backToCollectCustomerInfo">Back</button>



						<button class="btn btn-default btn-lg btn-block"
							name="_eventId_cancel">Cancel</button>

					</form:form>
				</div>
			</div>
		</section>
	</div>
</body>
</html>
