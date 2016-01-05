<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Main content -->
<div class="col-md-9 col-sm-9">

	<h5 class="title">Minha Conta</h5>

	<!-- Your details -->
	<div class="address">
		<address>
			<!-- Your name -->
			<strong>${usuarioComprador.nome}, ${usuarioComprador.snome}
			</strong><br>
			<!-- Address -->
			<strong><a href="editconfig">>> Add Endereço</a> </strong>
			<p>
			<!-- Phone number -->
			<abbr title="Phone">P:</abbr> +55 (41) 0000-0000.<br /> <a
				href="mailto:#">${usuarioComprador.email}</a>
		</address>
	</div>

	<h5 class="title">Compras recentes</h5>

	<table class="table table-striped tcart">
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
			<c:forEach items="${pedidos}" var="ped" end="2">
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
