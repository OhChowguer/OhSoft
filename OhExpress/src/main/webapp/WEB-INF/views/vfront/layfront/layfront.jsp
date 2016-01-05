<%@page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %> 
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!-- Title here -->
<title>Oh!Express</title>
<!-- Description, Keywords and Author -->
<meta name="description" content="Your description">
<meta name="keywords" content="Your,Keywords">
<meta name="author" content="ResponsiveWebInc">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Styles -->
<!-- Bootstrap CSS -->
<link
	href="${pageContext.request.contextPath}/resources/front/css/bootstrap.min.css"
	rel="stylesheet">
<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/front/css/settings.css"
	media="screen" />
<!-- Pretty Photo -->
<link
	href="${pageContext.request.contextPath}/resources/front/css/prettyPhoto.css"
	rel="stylesheet">
<!-- Flex slider -->
<link
	href="${pageContext.request.contextPath}/resources/front/css/flexslider.css"
	rel="stylesheet">
<!-- Parallax slider -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/front/css/slider.css">
<!-- Owl Carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/front/css/owl.carousel.css">
<!-- Font awesome CSS -->
<link
	href="${pageContext.request.contextPath}/resources/front/css/font-awesome.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link
	href="${pageContext.request.contextPath}/resources/front/css/style.css"
	rel="stylesheet">
<!-- Stylesheet for Color -->
<link
	href="${pageContext.request.contextPath}/resources/front/css/red.css"
	rel="stylesheet">

<!-- Favicon -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/front/img/favicon/favicon.png">
</head>

<body>






	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="body" />









	<!-- Footer ends -->

	<!-- Scroll to top -->
	<span class="totop"><a href="#"><i class="fa fa-chevron-up"></i></a></span>

	<!-- Javascript files -->
	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/resources/front/js/jquery.js"></script>
	<!-- Bootstrap JS -->
	<script
		src="${pageContext.request.contextPath}/resources/front/js/bootstrap.min.js"></script>
	<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
	<script
		src="${pageContext.request.contextPath}/resources/front/js/jquery.themepunch.plugins.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/front/js/jquery.themepunch.revolution.min.js"></script>
	<!-- Isotope, Pretty Photo JS -->
	<script
		src="${pageContext.request.contextPath}/resources/front/js/jquery.isotope.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/front/js/jquery.prettyPhoto.js"></script>
	<!-- Filter for support page -->
	<script
		src="${pageContext.request.contextPath}/resources/front/js/filter.js"></script>
	<!-- Flex slider -->
	<script
		src="${pageContext.request.contextPath}/resources/front/js/jquery.flexslider-min.js"></script>
	<!-- Parallax Slider -->
	<script
		src="${pageContext.request.contextPath}/resources/front/js/jquery.cslider.js"></script>
	<!-- Parallax slider extra -->
	<script
		src="${pageContext.request.contextPath}/resources/front/js/modernizr.custom.28468.js"></script>
	<!-- Owl Carousel -->
	<script
		src="${pageContext.request.contextPath}/resources/front/js/owl.carousel.min.js"></script>
	<!-- Respond JS for IE8 -->
	<script
		src="${pageContext.request.contextPath}/resources/front/js/respond.min.js"></script>
	<!-- HTML5 Support for IE -->
	<script
		src="${pageContext.request.contextPath}/resources/front/js/html5shiv.js"></script>
	<!-- Custom JS -->
	<script
		src="${pageContext.request.contextPath}/resources/front/js/custom.js"></script>
	<!-- This Page Script -->
	<script>
		// Revolution Slider
		var revapi;
		jQuery(document).ready(function() {
			revapi = jQuery('.tp-banner').revolution({
				delay : 9000,
				startwidth : 1170,
				startheight : 450,
				hideThumbs : 200,
				shadow : 0,
				navigationType : "none",
				hideThumbsOnMobile : "on",
				hideArrowsOnMobile : "on",
				hideThumbsUnderResoluition : 0,
				touchenabled : "on",
				fullWidth : "on"
			});
		});
	</script>
</body>
</html>