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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<!-- Title and other stuffs -->
<title><tiles:insertAttribute name="title" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">


<!-- TESTTTT -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/js/plugins/dialog/flavr/css/animate.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/js/plugins/dialog/flavr/css/flavr.min.css" />


<!--  <link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/js/plugins/multbox/mb.css"
	type="text/css" />-->

<!-- FIM TEST -->


<!-- Stylesheets -->
<link
	href="${pageContext.request.contextPath}/resources/theme/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font awesome icon -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/theme/css/font-awesome.min.css">
<!-- jQuery UI -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/theme/css/jquery-ui.css">
<!-- Calendar -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/theme/css/fullcalendar.css">
<!-- prettyPhoto -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/theme/css/prettyPhoto.css">
<!-- Star rating -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/theme/css/rateit.css">
<!-- Date picker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/theme/css/bootstrap-datetimepicker.min.css">
<!-- CLEditor -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/theme/css/jquery.cleditor.css">
<!-- Data tables -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/theme/css/jquery.dataTables.css">
<!-- Bootstrap toggle -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/theme/css/jquery.onoff.css">
<!-- Main stylesheet -->
<link
	href="${pageContext.request.contextPath}/resources/theme/css/style.css"
	rel="stylesheet">
<!-- Widgets stylesheet -->
<link
	href="${pageContext.request.contextPath}/resources/theme/css/widgets.css"
	rel="stylesheet">

<link
	href="${pageContext.request.contextPath}/resources/js/plugins/jquery.ezdz.min.css"
	rel="stylesheet">


<script
	src="${pageContext.request.contextPath}/resources/theme/js/respond.min.js"></script>

<!--[if lt IE 9]>
  <script src="${pageContext.request.contextPath}/resources/theme/js/html5shiv.js"></script>
  <![endif]-->

<!-- Favicon -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/theme/jimg/favicon/favicon.png">

	
	<link
	href="${pageContext.request.contextPath}/resources/css/jquery.bsmselect.css"
	rel="stylesheet">
	<link
	href="${pageContext.request.contextPath}/resources/css/fileinput.min.css"
	rel="stylesheet">
	<link
	href="${pageContext.request.contextPath}/resources/css/ohexpress.css"
	rel="stylesheet">

</head>

<body>


	<tiles:insertAttribute name="headerone" />
	<tiles:insertAttribute name="headertwo" />
	<tiles:insertAttribute name="menu" />
	<tiles:insertAttribute name="body" />
	<tiles:insertAttribute name="footer" />


	<!-- Scroll to top -->
	<span class="totop"><a href="#"><i class="fa fa-chevron-up"></i></a></span>
	<!-- JS -->
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/jquery.js"></script>
	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/bootstrap.min.js"></script>
	<!-- Bootstrap -->
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/jquery-ui.min.js"></script>
	<!-- jQuery UI -->
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/fullcalendar.min.js"></script>
	<!-- Full Google Calendar - Calendar -->
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/jquery.rateit.min.js"></script>
	<!-- RateIt - Star rating -->
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/jquery.prettyPhoto.js"></script>
	<!-- prettyPhoto--> 
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/jquery.slimscroll.min.js"></script>
	<!-- jQuery Slim Scroll -->
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/jquery.dataTables.min.js"></script>
	<!-- Data tables -->

	<!-- jQuery Flot -->
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/excanvas.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/jquery.flot.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/jquery.flot.resize.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/jquery.flot.pie.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/jquery.flot.stack.js"></script>

	<!-- jQuery Notification - Noty -->
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/jquery.noty.js"></script>
	<!-- jQuery Notify -->
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/themes/default.js"></script>
	<!-- jQuery Notify -->
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/layouts/bottom.js"></script>
	<!-- jQuery Notify -->
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/layouts/topRight.js"></script>
	<!-- jQuery Notify -->
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/layouts/top.js"></script>
	<!-- jQuery Notify -->
	<!-- jQuery Notification ends -->

	<script
		src="${pageContext.request.contextPath}/resources/theme/js/sparklines.js"></script>
	<!-- Sparklines -->
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/jquery.cleditor.min.js"></script>
	<!-- CLEditor -->
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/bootstrap-datetimepicker.min.js"></script>
	<!-- Date picker -->
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/jquery.onoff.min.js"></script>
	<!-- Bootstrap Toggle--> 
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/filter.js"></script> 
	<!-- Filter for support page -->
	
	<script
		src="${pageContext.request.contextPath}/resources/theme/js/charts.js"></script>
		<script
		src="${pageContext.request.contextPath}/resources/theme/js/custom.js"></script>	
	<!-- Charts & Graphs -->
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/jquery.ezdz.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/mask/mask.js"></script>

	<!--  <script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/plugins/multbox/mb.js"></script>-->

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/plugins/dialog/flavr/js/flavr.min.js"></script>

	<!-- <script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery.cropit.js"></script> -->

	<!--  <script
		src="${pageContext.request.contextPath}/resources/js/selects.js"></script>-->

	<script
		src="${pageContext.request.contextPath}/resources/js/fileinput.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/addinput.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.bsmselect.js"></script>
		

	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	



</body>
</html>