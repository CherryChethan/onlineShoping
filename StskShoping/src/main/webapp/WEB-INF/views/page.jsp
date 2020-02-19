<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<spring:url var="css" value="/resources/css"></spring:url>
<spring:url var="js" value="/resources/js"></spring:url>
<spring:url var="images" value="/resources/images"></spring:url>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>STSKProperties- ${title}</title>


<script>
	window.menu = '${title}';
</script>


<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap runable css-->
<link href="${css}/bootstrap-runable-theam.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>
	<div class="wrapper">
	
		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>

		<!-- Page Content -->
		<!-- loading the home content -->
		<c:if test="${userClickHome == true}">
			<%@include file="home.jsp"%>
		</c:if>

		<!-- Load only user click about -->
		<c:if test="${userClickAbout == true}">
			<%@include file="about.jsp"%>
		</c:if>


		<!-- Load only user click contact -->
		<c:if test="${userClickContact == true}">
			<%@include file="contact.jsp"%>
		</c:if>

		<!-- Footer -->
		<%@include file="./shared/footer.jsp"%>

		<!-- Bootstrap core JavaScript -->
		<script src="${js}jquery.min.js"></script>
		<script src="${js}/bootstrap.bundle.min.js"></script>

		<!-- Self coded javaScript -->
		<script src="${js}/bundle.myapp.js"></script>

	</div>

</body>

</html>
