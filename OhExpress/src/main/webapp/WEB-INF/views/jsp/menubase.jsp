<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Sidebar -->
<div class="sidebar">
	<div class="sidebar-dropdown">
		<a href="#">Navigation</a>
	</div>

	<!--- Sidebar navigation -->
	<!-- If the main navigation has sub navigation, then add the class "has_sub" to "li" of main navigation. -->
	<ul id="nav">
		<!-- Main menu with font awesome icon -->
		<li class="open"><a href="${pageContext.request.contextPath}/admin/resumo"><i
				class="fa fa-home"></i>Controle Geral</a> <!-- Sub menu markup 
            <ul>
              <li><a href="#">Submenu #1</a></li>
              <li><a href="#">Submenu #2</a></li>
              <li><a href="#">Submenu #3</a></li>
            </ul>--></li>
		<li class="has_sub"><a href="#"><i class="fa fa-list-alt"></i>
				Produtos<span class="pull-right"><i
					class="fa fa-chevron-right"></i></span></a>
			<ul>
				<li><a href="${pageContext.request.contextPath}/admin/produto/cadastro">Cadastro de
						produtos</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/produto/lista">Lista de
						produtos</a></li>


			</ul></li>
		<li class="has_sub"><a href="#"><i class="fa fa-bar-chart-o"></i>
				Lojas <span class="pull-right"><i class="fa fa-chevron-right"></i></span></a>
			<ul>
				<li><a href="${pageContext.request.contextPath}/admin/loja/cadastro">Cadastrar
						Loja</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/loja/lista">Lista de lojas</a></li>
				<!--
				<li><a href="register.html">Register</a></li>
				<li><a href="support.html">Support</a></li>
				<li><a href="invoice.html">Invoice</a></li>
				<li><a href="gallery.html">Gallery</a></li>-->
			</ul></li>
		<li class="has_sub"><a href="#"><i class="fa fa-file-o"></i>
				Pedidos <span class="pull-right"><i
					class="fa fa-chevron-right"></i></span></a>
			<ul>
				
				
				<li><a href="#">Cadastro de Pedidos</a></li>
				<li><a href="#">Lista de Pedidos</a></li>
				<li><a href="#">Histórico de Pedidos</a></li>
				<!--<li><a href="calendar.html">Calendar</a></li>
				<li><a href="grid.html">Grid</a></li>
				-->
			</ul></li>
		<li class="has_sub"><a href="#"><i class="fa fa-table"></i>
				Estruturas <span class="pull-right"><i
					class="fa fa-chevron-right"></i></span></a>
			<ul>
				<li><a href="${pageContext.request.contextPath}/admin/categorias/cadastro">Cadastro
						de Categoria</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/categorias/lista">Lista de
						Categorias</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/mp/cadastro">Cadastro MP</a></li>
				<li><a href="#">Lista MP</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/itemproduto/cadastro">Cadastro de Itens do Produto</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/itemproduto/lista">Lista de Itens do Produto</a></li>				
				<li><a href="${pageContext.request.contextPath}/admin/categoriasproduto/cadastro">Cadastro de Categoria de Produto</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/categoriasproduto/lista">Lista de Categoria de Produto</a></li>
			</ul></li>
		<li class="has_sub"><a href="#"><i class="fa fa-file-o"></i>
				Relatorios <span class="pull-right"><i
					class="fa fa-chevron-right"></i></span></a>
			<ul>
				<li><a href="#">Loja</a></li>				
				<li><a href="#">Pedido</a></li>
				<li><a href="#">Produtos</a></li>
				<!--
				<li><a href="error-log.html">Error Log</a></li>
				<li><a href="calendar.html">Calendar</a></li>
				<li><a href="grid.html">Grid</a></li>
				-->
			</ul></li>
		<li><a href="${pageContext.request.contextPath}/admin/usuario/cadastro"><i
				class="fa fa-magic"></i> Colaboradores </a></li>
		
	</ul>
</div>

<!-- Sidebar ends -->