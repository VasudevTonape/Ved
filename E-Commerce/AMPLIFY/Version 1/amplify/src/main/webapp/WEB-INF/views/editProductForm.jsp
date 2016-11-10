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
<title>Edit Product Form</title>

<link rel="stylesheet"
	href="<c:url value="/resources/css/editProductForm.css"/>" />

<link rel="stylesheet" href="<c:url value="/resources/css/footer.css"/>" />

</head>
<body>

	<div class="bg-img">
		<section>
			<div class="container">

				<div
					class="protuctform container-fluid col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-12">

					<c:url value="/admin/product/editProduct" var="url"></c:url>



					<form:form method="post" action="${url}"
						commandName="editProductObj">

						<legend>Edit Product</legend>

						<div class="form-group">
							<label>Product Id</label><br/>
							<form:input path="productId" class="form-controlp " disabled="true" />
							<form:hidden path="productId"/>
						</div>

						<div class="form-group">
							<label>Product Description</label>
							<form:input path="productDescription" class="form-control"></form:input>
						</div>

						<div class="form-group">
							<label>Product Manufacturer</label>
							<form:input path="productManufacturer" class="form-control"></form:input>
						</div>

						<div class="form-group">
							<label>Product Name</label>
							<form:input path="productName" class="form-control"></form:input>
						</div>

						<div class="form-group">
							<label>Product Price</label>
							<form:input path="productPrice" class="form-control"></form:input>
						</div>

						<div class="form-group">
							<label>Unit In Stock</label>
							<form:input path="unitInStock" class="form-control"></form:input>
						</div>




						<div class="form-group">
							<form:label path="category">Category</form:label>
							<br />
							<div class="categories">
								<form:radiobutton path="category.cId" value="1" />
								New Arrivals<br />
								<form:radiobutton path="category.cId" value="2" />
								Special Edition<br />
								<form:radiobutton path="category.cId" value="3" />
								Discount Sale<br />
								<form:radiobutton path="category.cId" value="4" />
								General<br />
							</div>
						</div>



						<button type="submit" class="btn btn-default btn-lg btn-block"
							value="EditProduct">Submit</button>

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