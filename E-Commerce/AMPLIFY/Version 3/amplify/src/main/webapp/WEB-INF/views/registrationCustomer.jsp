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
<title>Register Customer</title>


<link rel="stylesheet"
	href="<c:url value="/resources/css/register.css"/>" />

<link rel="stylesheet" href="<c:url value="/resources/css/footer.css"/>" />

</head>
<body>


	<div class="bg-img">
		<section>
			<div class="container">

				<div
					class="register container-fluid col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-12">

					<c:url value="/customer/registration" var="url"></c:url>

					<form:form action="${url }" method="post" commandName="customer">

						<legend>Registration</legend>

						<h3>Basic Info :</h3>


						<div class="form-group">
							<form:errors path="customerName" cssStyle="color: #ff0000" />
							<form:input path="customerName" class="form-control"
								placeholder="Name" />
						</div>

						<div class="form-group">
							<form:errors path="customerEmail" cssStyle="color: #ff0000" />
							<form:input path="customerEmail" class="form-control"
								placeholder="Email" />
							<c:if test="${duplicateEmail!=null }">
		       					 ${duplicateEmail }
		        			</c:if>
						</div>


						<div class="form-group">
							<form:input path="customerPhone" class="form-control"
								placeholder="Phone" />
						</div>

						<div class="form-group">
							<form:errors path="users.username" cssStyle="color: #ff0000" />
							<form:input path="users.username" class="form-control"
								placeholder="Username" />
							<c:if test="${duplicateUname!=null }">
		       			 		${duplicateUname }
		           			</c:if>
						</div>

						<div class="form-group">

							<form:errors path="users.password" cssStyle="color: #ff0000" />
							<form:password path="users.password" class="form-control"
								placeholder="Password" />
						</div>


						<br />

						<h3>Billing Address :</h3>

						<div class="form-group">
							<form:input path="billingAddress.streetName" class="form-control"
								placeholder="Street Name" />
						</div>

						<div class="form-group">
							<form:input path="billingAddress.apartmentNumber"
								class="form-control" placeholder="Apartment Number" />
						</div>

						<div class="form-group">
							<form:input path="billingAddress.city" class="form-control"
								placeholder="City" />
						</div>

						<div class="form-group">
							<form:input path="billingAddress.state" class="form-control"
								placeholder="State" />
						</div>

						<div class="form-group">
							<form:input path="billingAddress.country" class="form-control"
								placeholder="Country" />
						</div>

						<div class="form-group">
							<form:input path="billingAddress.zipcode" class="form-control"
								placeholder="Zipcode" />
						</div>



						<br />



						<h3>Shipping Address :</h3>

						<div class="form-group">
							<form:input path="shippingAddress.streetName"
								class="form-control" placeholder="Street Name" />
						</div>

						<div class="form-group">
							<form:input path="shippingAddress.apartmentNumber"
								class="form-control" placeholder="Apartment Number" />
						</div>

						<div class="form-group">
							<form:input path="shippingAddress.city" class="form-control"
								placeholder="City" />
						</div>

						<div class="form-group">
							<form:input path="shippingAddress.state" class="form-control"
								placeholder="State" />
						</div>

						<div class="form-group">
							<form:input path="shippingAddress.country" class="form-control"
								placeholder="Country" />
						</div>

						<div class="form-group">
							<form:input path="shippingAddress.zipcode" class="form-control"
								placeholder="Zipcode" />
						</div>


						<br />


						<input type="submit" value="Submit"
							class="btn btn-default btn-lg btn-block">
						<a href="<c:url value="/" />"
							class="btn btn-default btn-lg btn-block">Cancel</a>

					</form:form>

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