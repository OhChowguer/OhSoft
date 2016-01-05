<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
function onOffLoja(id){
	$.post("${pageContext.request.contextPath}/admin/loja/chancestatus/"+id, {

	}, function(result) {

		if (result == "ok") {
			alert("ok")
		} else {
			alert("nops")
		}

	});
}
</script>
<!-- Main content starts -->

<div class="content">
	<!-- Main bar -->
	<div class="mainbar">

		<!-- Page heading -->
		<div class="page-head">
			<h2 class="pull-left">
				<i class="fa fa-home"></i> Lista de lojas
			</h2>

			<!-- Breadcrumb -->
			<div class="bread-crumb pull-right">
				<a href="index.html"><i class="fa fa-home"></i> Admin</a>
				<!-- Divider -->
				<span class="divider">/</span> <a href="#" class="bread-current">Lista de lojas</a>
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
								<div class="pull-left">Lista de lojas</div>
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
											<div class="pull-left">Lojas</div>
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
														<th>Id</th>														
														<th>Logo</th>
														<th>Nome</th>
														<th>Descrição</th>
														<th>Cidade</th>
														<th>Estado</th>
														<th>Pais</th>
														<th>Status</th>
														<th>Controle</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${lojas}" var="lojas">
													
														<tr>
															<td>${lojas.id}</td>
															<td><img height="42" width="42"
															
															
																src="${lojas.imgLoja}"
																alt="" /></td>
															<td>${lojas.nome}</td>
															<td>${lojas.descricao}</td>
															<td>${lojas.endereco.cidade}</td>
															<td>${lojas.endereco.estado}</td>
															<td>${lojas.endereco.pais}</td>														
															<c:if test="${lojas.status=='true'}">
															<td><div class="sw-green">
																	<input type="checkbox" onclick="onOffLoja(${lojas.id})" checked class="onoffLoja" />
															</div></td>														
															</c:if>
															<c:if test="${lojas.status=='false'}">
															<td><div class="sw-green">
																	<input type="checkbox" onclick="onOffLoja(${lojas.id})" class="onoffLoja" />
																</div></td>												
															</c:if>
											
															<td>

																<!--<button class="btn btn-xs btn-success">
																	<i class="fa fa-check"></i>
																</button>-->
																<button onclick="location.href='editar/${lojas.id}'" class="btn btn-xs btn-warning">
																	<i class="fa fa-pencil"></i>
																</button>
																
																<button  onclick="delloja(${lojas.id})" class="btn btn-xs btn-danger">
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