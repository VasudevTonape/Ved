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

<title>Login</title>


<link rel="stylesheet" href="<c:url value="/resources/css/login.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/css/footer.css"/>" />

</head>



<body>
	<div class="bg-img">
		<section>
			<div class="container">

				<div
					class="login container-fluid col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-12">

					<c:if test="${registrationSuccess !=null}">
							${registrationSuccess }
					</c:if>

					<c:if test="${logout!=null }">
							${logout }
					</c:if>

					<form method="post"
						action="<c:url value="/j_spring_security_check"></c:url>">

						<legend>Login</legend>

						<c:if test="${not empty error }">
								${error }
							</c:if>

						<div class="form-group">
							<input type="text" class="form-control" name="j_username"
								placeholder="Username">
						</div>

						<div class="form-group">
							<input type="password" class="form-control" name="j_password"
								placeholder="Password">
						</div>

						<button type="submit" class="btn btn-default btn-lg btn-block"
							value="Submit">Submit</button>
					</form>


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