<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Main content -->
<div class="col-md-9 col-sm-9">
	<!-- title -->
	<h5 class="title">Histórico de Pedidos</h5>
	<!-- Table Page -->
	<div class="page-tables">
		<!-- Table -->
		<div class="table-responsive">
			<table class="table table-striped tcart" id="data-table-Hpedido2">
				<thead>
					<tr>
						<th>Data</th>
						<th>ID</th>
						<th>Nome da Loja</th>
						<th>Preço Total</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${pedidos}" var="ped" >
						<tr>
							<td>00-00-00</td>
							<td><fmt:formatNumber pattern="0000000000" value="${ped.id}" /></td>
							<td>${ped.loja.nome}</td>
							<td>$000</td>
							<c:if test="${ped.status==1}">
								<td><span class="label label-warning">ESPERA</span></td>
							</c:if>
							<c:if test="${ped.status==2}">
								<td><span class="label label-success">ACEITO</span></td>
							</c:if>
							<c:if test="${ped.status==3}">
								<td><span class="label label-info">FINALIZADO</span></td>
							</c:if>
							<c:if test="${ped.status==4}">
								<td><span class="label label-danger">FECHADO</span></td>
							</c:if>

						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>
</div>
