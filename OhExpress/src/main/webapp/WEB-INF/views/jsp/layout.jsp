<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>OhExpress System</title>
<head>
<!-- Bootstrap Core CSS -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet" type="text/css">

<!-- MetisMenu CSS -->
<link href="<c:url value="/resources/css/plugins/timeline.css" />"
	rel="stylesheet">

<link
	href="<c:url value="/resources/css/plugins/metisMenu/metisMenu.min.css"/>"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="<c:url value="/resources/css/sb-admin-2.css"/> "
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="<c:url value="/resources/font-awesome-4.1.0/css/font-awesome.min.css"/>"
	rel="stylesheet" type="text/css">


</head>
<body>
	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">OhExpress</a>
			</div>
			<tiles:insertAttribute name="header" />
			<tiles:insertAttribute name="menu" />

		</nav>

		<div id="page-wrapper">


			<tiles:insertAttribute name="body" />



		</div>
		<!-- /#page-wrapper -->

	</div>
	<script src="<c:url value="/resources/js/jquery.js" />"></script>

	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

	<script
		src="<c:url value="/resources/js/plugins/metisMenu/metisMenu.min.js" />"></script>

	<script src="<c:url value="/resources/js/sb-admin-2.js" />"></script>

	<script type="text/javascript"
		src="<c:url value="/resources/js/plugins/tinymce/tinymce.min.js" />"></script>
	<script type="text/javascript">
		tinymce
				.init({
					language : 'pt_BR',
					selector : "textarea",
					toolbar: "styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent "
				});
	</script>
</body>
</html>