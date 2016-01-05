<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<!-- /.navbar-top-links -->

<div class="navbar-default sidebar" role="navigation">
	<div class="sidebar-nav navbar-collapse">
		<ul class="nav" id="side-menu">
			<li class="sidebar-search">
				<div class="input-group custom-search-form">
					<input type="text" class="form-control" placeholder="Search...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<i class="fa fa-search"></i>
						</button>
					</span>
				</div> <!-- /input-group -->
			</li>
			<li><a class="<tiles:insertAttribute name="r"/>"
				href="/ohexpress/admin/resumo"><i class="fa fa-dashboard fa-fw"></i>
					Resumo</a></li>
			<li class="<tiles:insertAttribute name="u"/>"><a href="#"><i
					class="fa fa-bar-chart-o fa-fw"></i> Usuarios<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a class="<tiles:insertAttribute name="uc"/>"
						href="/ohexpress/admin/usercad">Cadastrar</a></li>
					<li><a class="<tiles:insertAttribute name="ul"/>"
						href="/ohexpress/admin/listartodos">Listar</a></li>
				</ul> <!-- /.nav-second-level --></li>

			<li class="<tiles:insertAttribute name="p"/>"><a href="#"><i
					class="fa fa-bar-chart-o fa-fw"></i> Produtos<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a class="<tiles:insertAttribute name="pc"/>"
						href="/ohexpress/admin/produto/cadastro">Cadastrar</a></li>
					<li><a class="<tiles:insertAttribute name="pl"/>" href="#">Listar</a></li>
					<li><a class="<tiles:insertAttribute name="pl"/>" href="#">Listar</a></li>
				</ul> <!-- /.nav-second-level --></li>
			<li><a class="<tiles:insertAttribute name="v"/>"
				href="tables.html"><i class="fa fa-table fa-fw"></i> Vendas</a></li>
			<li><a class="<tiles:insertAttribute name="pd"/>"
				href="forms.html"><i class="fa fa-edit fa-fw"></i> Pedidos</a></li>
			<li><a class="<tiles:insertAttribute name="cfg"/>" href="#"><i
					class="fa fa-wrench fa-fw"></i> Configurações<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="panels-wells.html">Config1</a></li>

				</ul> <!-- /.nav-second-level --></li>


		</ul>
	</div>
	<!-- /.sidebar-collapse -->
</div>
<!-- /.navbar-static-side -->