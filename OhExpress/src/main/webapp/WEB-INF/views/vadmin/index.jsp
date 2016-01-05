<!-- Main content starts -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>




<!-- Main bar -->
<div class="mainbar">

	<!-- Page heading -->
	<div class="page-head">
		<h2 class="pull-left">
			<i class="fa fa-table"></i> Resumo
		</h2>

		<!-- Breadcrumb -->
		<div class="bread-crumb pull-right">
			<a href="index.html"><i class="fa fa-home"></i> Admin</a>
			<!-- Divider -->
			<span class="divider">/</span> <a href="#" class="bread-current">Resumo</a>
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
							<div class="pull-left">Pedidos</div>
							<div class="widget-icons pull-right">
								<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
								<a href="#" class="wclose"><i class="fa fa-times"></i></a>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="widget-content">
							<div class="padd">

								<!-- Table Page -->
								<div class="page-tables">
									<!-- Table -->
									<div class="table-responsive">
										<table id="data-table" >
											<thead>
												<tr>
													<th>Pedido</th>
													<th>Lista de Produtos</th>
													<th>Especificacoes</th>
													<th>Adicionais</th>
													<th>Status</th>
													<th>Controle</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${pedido}" var="ped">
													<tr>
														<td><fmt:formatNumber pattern="0000000000" value="${ped.id}" /></td>
														<td><c:forEach items="${ped.item}" var="peditem">
																		${peditem.quantidade} x ${peditem.produto.nome }<br>
															</c:forEach></td>
														<td>+++</td>
														<td>---</td>
														<c:if test="${ped.status==1}">
															<td><span class="label label-warning">1.ESPERA</span></td>
															<td>

																<button onclick="chanceStPed(2,${ped.id})"
																	class="btn btn-lg btn-success">
																	<i class="fa fa-pencil"></i>
																</button>
																<button class="btn btn-lg btn-danger">
																	<i class="fa fa-times"></i>
																</button>

															</td>
														</c:if>
														<c:if test="${ped.status==2}">
															<td><span class="label label-success">2.ACEITO    </span></td>
															<td><button onclick="chanceStPed(3,${ped.id})" class="btn btn-lg btn-info">
																	<i class="fa fa-pencil"></i>
																</button>
																<button class="btn btn-lg btn-danger">
																	<i class="fa fa-times"></i>
																</button></td>

														</c:if>
														<c:if test="${ped.status==3}">
															<td><span class="label label-info">3.FINALIZADO</span></td>
															<td><button onclick="chanceStPed(4,${ped.id})" class="btn btn-lg btn-info">
																	<i class="fa fa-pencil"></i>
																</button>
																<button class="btn btn-lg btn-danger">
																	<i class="fa fa-times"></i>
																</button></td>
														</c:if>
														<c:if test="${ped.status==4}">
															<td><span class="label label-danger">4.FECHADO</span></td>
															<td><button class="btn btn-lg btn-info">
																	<i class="fa fa-pencil"></i>
																</button>
																<button class="btn btn-lg btn-danger">
																	<i class="fa fa-times"></i>
																</button></td>
														</c:if>
														<c:if test="${ped.status==5}">
															<td><span class="label label-danger">RECUSADO</span></td>
															<td><button class="btn btn-lg btn-info">
																	LIMPAR</button></td>
														</c:if>


													</tr>

												</c:forEach>


											</tbody>
										</table>
										<div class="clearfix"></div>
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







