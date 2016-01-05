
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Main content starts -->
<script type="text/javascript">
function onOffProduto(id){
	$.post("${pageContext.request.contextPath}/admin/produto/chancestatus/" + id, {

	}, function(result) {

		if (result == "ok") {
			alert("ok")
		} else {
			alert("nops")
		}

	});
}
</script>
<div class="content">
	<!-- Main bar -->
	<div class="mainbar">

		<!-- Page heading -->
		<div class="page-head">
			<h2 class="pull-left">
				<i class="fa fa-home"></i> Lista de seus produtos
			</h2>

			<!-- Breadcrumb -->
			<div class="bread-crumb pull-right">
				<a href="index.html"><i class="fa fa-home"></i> Admin</a>
				<!-- Divider -->
				<span class="divider">/</span> <a href="#" class="bread-current">Lista
					de produtos</a>
			</div>

			<div class="clearfix"></div>

		</div>
		<!-- Page heading ends -->


		<!-- Matter -->

		<div class="matter">
			<div class="container">
				<div class="row">
					<div class="col-md-12">

						<div class="widget">
							<div class="widget-head">
								<div class="pull-left">Lista de produtos</div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="fa fa-times"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="widget-content">
								<div class="padd">





									<div class="widget">

										<div class="widget-head">
											<div class="pull-left">Produtos</div>
											<div class="widget-icons pull-right">
												<a href="#" class="wminimize"><i
													class="fa fa-chevron-up"></i></a> <a href="#" class="wclose"><i
													class="fa fa-times"></i></a>
											</div>
											<div class="clearfix"></div>
										</div>

										<div class="widget-content">

											<table class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th>ID</th>
														<th>Nome</th>
														<th>Descriçao</th>
														<th>Preço</th>
														<th>Status</th>
														<th>Controle</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${produtos}" var="produto">
														<tr>
															<td>${produto.id}</td>
															<td>${produto.nome}</td>
															<td>${produto.descricao}</td>
															<td>${produto.preco}</td>															
															<c:if test="${produto.status=='true'}">
															<td><div class="sw-green">
																	<input type="checkbox" onclick="onOffProduto(${produto.id})" checked class="onoffProd" />
																</div></td>														
															</c:if>
															<c:if test="${produto.status=='false'}">
															<td><div class="sw-green">
																	<input type="checkbox" onclick="onOffProduto(${produto.id})" class="onoffProd" />
																</div></td>															
															</c:if>
															<td>
																<button onclick="location.href='editar/${produto.id}'"
																	class="btn btn-xs btn-warning">
																	<i class="fa fa-pencil"></i>
																</button>
																<button class="btn btn-xs btn-danger">
																	<i class="fa fa-times"></i>
																</button>
															</td>
														</tr>

													</c:forEach>


												</tbody>
											</table>

											<div class="widget-foot">


												<ul class="pagination pagination-sm pull-right">
													<li><a href="#">Inicio</a></li>
													<li><a href="#">1</a></li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#">Proxima</a></li>
												</ul>

												<div class="clearfix"></div>

											</div>

										</div>

									</div>


								</div>

							</div>

						</div>
						<div class="widget-foot">

							<!-- Footer goes here -->
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>

<!-- Matter ends -->



<!-- Mainbar ends -->
<div class="clearfix"></div>


<!-- Content ends -->