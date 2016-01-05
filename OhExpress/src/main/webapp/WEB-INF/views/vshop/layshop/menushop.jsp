<div class="navbar bs-docs-nav" role="banner">
	<div class="container">
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
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath}/home">Oh!Express</a></li>
				<li><a href="${pageContext.request.contextPath}/lojas?store=${loja.id}">${loja.nome }</a></li>
				<li><a href="${pageContext.request.contextPath}/pesqloja">Buscar lojas</a></li>
				<li><a href="">Suporte</a></li>
				<li><a href="">Contato</a></li>
				<li><a href="${pageContext.request.contextPath}/conta/minhaconta">Minha conta</a></li>

			</ul>
		</nav>
	</div>
</div>