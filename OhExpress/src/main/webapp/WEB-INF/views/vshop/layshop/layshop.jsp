<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!-- Title here -->
<title><tiles:insertAttribute name="title" /></title>
<!-- Description, Keywords and Author -->
<meta name="description" content="Your description">
<meta name="keywords" content="Your,Keywords">
<meta name="author" content="ResponsiveWebInc">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Styles -->
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link
	href="${pageContext.request.contextPath}/resources/shop/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Sidebar nav -->
<link
	href="${pageContext.request.contextPath}/resources/shop/css/sidebar-nav.css"
	rel="stylesheet">
<!-- Flex slider -->
<link
	href="${pageContext.request.contextPath}/resources/shop/css/flexslider.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/shop/css/owl.carousel.css"
	rel="stylesheet">
<!-- Data tables -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/theme/css/jquery.dataTables.css">
<link
	href="${pageContext.request.contextPath}/resources/shop/css/font-awesome.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="${pageContext.request.contextPath}/resources/shop/css/style.css"
	rel="stylesheet">
<!-- Stylesheet for Color -->
<link
	href="${pageContext.request.contextPath}/resources/shop/css/red.css"
	rel="stylesheet">

<!-- Favicon -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/shop/img/favicon/favicon.png">

<!-- CSS CROPPIC 
<link
	href="${pageContext.request.contextPath}/resources/shop/css/plugins/croppic/croppic.css"
	rel="stylesheet">-->

<!-- FIM CSS CROPPIC -->
<!-- JPLIST CSS -->
<link
	href="${pageContext.request.contextPath}/resources/shop/css/vendor/normalize.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/shop/css/jplist-demo-pages.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/shop/css/jplist-core.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/shop/css/jplist-filter-toggle-bundle.min.css"
	rel="stylesheet" type="text/css" />
<!--  <link href="${pageContext.request.contextPath}/resources/shop/css/jplist-textbox-control.min.css" rel="stylesheet"
	type="text/css" />-->
<link
	href="${pageContext.request.contextPath}/resources/shop/css/jplist-views-control.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/shop/css/jplist-pagination-bundle.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/shop/css/jplist-history-bundle.min.css"
	rel="stylesheet" type="text/css" />
</head>

<!-- FIMM JPLIST CSS -->

<body>
	<!-- AQUI VAI O HEADEER -->
	<tiles:insertAttribute name="header" />
	<!-- AQUI VAI O MENU SUPERIOR -->
	<tiles:insertAttribute name="menu" />
	<!-- AQUI COMEÇA O CORPO DA LOJA (PRODUTOS) -->
	<div class="items">
		<div class="container">
			<div class="row">
				<!-- Sidebar -->
				<div class="col-md-3 col-sm-3 hidden-xs">
					<!-- AQUI VAI O MENU LATERAL -->
					<tiles:insertAttribute name="menul" />
					<br />
					<!-- AQUI VAI OS ITENS EM DESTAQUE-->
					<tiles:insertAttribute name="destaques" />
				</div>
				<!-- AQUI VAI O CORPO -->
				<tiles:insertAttribute name="body" />
			</div>
		</div>
	</div>
	<!-- AQUI VAI OS CARROSELLLLLLL -->
	<tiles:insertAttribute name="carousel" />
	<!--AQUI VAI O FOOTER -->
	<tiles:insertAttribute name="footer" />
	<!-- Scroll to top -->
	<span class="totop"><a href="#"><i class="fa fa-chevron-up"></i></a></span>
	<!-- Javascript files -->
	<!-- jQuery -->
	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

	<!-- Bootstrap JS -->
	<script
		src="${pageContext.request.contextPath}/resources/shop/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/shop/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/shop/js/filter.js"></script>
	<!-- Sidebar navigation -->
	<script
		src="${pageContext.request.contextPath}/resources/shop/js/nav.js"></script>
	<!-- Flex slider -->
	<script
		src="${pageContext.request.contextPath}/resources/shop/js/jquery.flexslider-min.js"></script>
	<!-- Respond JS for IE8 -->
	<script
		src="${pageContext.request.contextPath}/resources/shop/js/respond.min.js"></script>
	<!-- HTML5 Support for IE -->
	<script
		src="${pageContext.request.contextPath}/resources/shop/js/html5shiv.js"></script>
	<!-- Custom JS -->
	<script
		src="${pageContext.request.contextPath}/resources/shop/plugins/croppic/croppic.min.js"></script>
	<!-- Data Table -->
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/jquery.dataTables.min.js"></script>

	<!-- JPLIST JS -->
	<script
		src="${pageContext.request.contextPath}/resources/shop/js/jplist-core.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/shop/js/jplist.filter-toggle-bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/shop/js/jplist.history-bundle.min.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap-multiselect.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap-multiselect-collapsible-groups.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/shop/js/jplist.sort-bundle.min.js"></script>
	<!-- <script src="${pageContext.request.contextPath}/resources/shop/js/jplist.textbox-control.min.js"></script>-->
	<script
		src="${pageContext.request.contextPath}/resources/shop/js/jplist.views-control.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/shop/js/jplist.pagination-bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/shop/js/custom.js"></script>

	<!-- Validator -->

	<script
		src="${pageContext.request.contextPath}/resources/js/validator.min.js"></script>

	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

	<script>
		$('document').ready(function() {

			$('#gridProdutosLoja').jplist({
				itemsBox : '.list',
				itemPath : '.list-item',
				panelPath : '.jplist-panel'
			});
		});
	</script>


	<!-- FIM JPLIST JS -->



</body>
</html>
