<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url var="url" value="/admin/log" />
<!-- Header starts -->
<header>
	<div class="container">
		<div class="row ">
			<div class="col-md-2">
				<a href="home"><img class="img-responsive"
					src="${pageContext.request.contextPath}/resources/img/logo.png"
					alt="" /></a>
			</div>
			<div class="navbar bs-docs-nav" role="banner">
				<div class="navbar-header">
					<button class="navbar-toggle" type="button" data-toggle="collapse"
						data-target=".bs-navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<nav class="collapse navbar-collapse bs-navbar-collapse"
					role="navigation">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="home">Home</a></li>
						<li><a href="pesqloja">Estabelecimentos</a></li>
						<li><a href="#">Serviços</a></li>
						<li><a href="#">Sobre</a></li>
						<li><a href="#">Contato</a></li>
					</ul>
				</nav>
			</div>
			<!--/ Navigation end -->
		</div>
	</div>

</header>
<!-- Seperator -->
<div class="sep"></div>
<!--/ Header ends -->