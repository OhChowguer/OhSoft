<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="navbar navbar-fixed-top bs-docs-nav" role="banner">

	<div class="conjtainer">
		<!-- Menu button for smallar screens -->
		<div class="navbar-header">
			<button class="navbar-toggle btn-navbar" type="button"
				data-toggle="collapse" data-target=".bs-navbar-collapse">
				<span>Menu</span>
			</button>
			<!-- Site name for smallar screens -->
			<a href="/ohexpress" class="navbar-brand hidden-lg">Oh!Express</a>
		</div>



		<!-- Navigation starts -->
		<nav class="collapse navbar-collapse bs-navbar-collapse"
			role="navigation">

	
				
			<!-- Search form -->
			<form class="navbar-form navbar-left" role="pesquisa">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Pesquisa">
				</div>
			</form>
			<!-- Links -->
			<ul class="nav navbar-nav pull-right">
				<li class="dropdown pull-right"><a data-toggle="dropdown"
					class="dropdown-toggle" href="#"> <i class="fa fa-user"></i>
						Admin <b class="caret"></b>
				</a> <!-- Dropdown menu -->
					<ul class="dropdown-menu">
						<li><a href="#"><i class="fa fa-user"></i> Minha Conta</a></li>
						<li><a href="#"><i class="fa fa-home"></i> Lojas</a></li>
						<li><a href="#"><i class="fa fa-cogs"></i> Configurações</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/sair"><i class="fa fa-sign-out"></i>
								Sair</a></li>
					</ul></li>

			</ul>
		</nav>

	</div>
</div>