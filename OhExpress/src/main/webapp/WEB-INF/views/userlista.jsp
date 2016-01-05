<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Lista de usuarios</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>


<div class="panel panel-primary">
	<!-- Default panel contents -->
	<div class="panel-heading"></div>

	<!-- Table -->
	<table class="table">
		<tr>
			<th id="ex31a_col_jun">ID</th>
			<th id="ex31a_col_jul">Login</th>
			<th id="ex31a_col_jun">Email</th>
			<th id="ex31a_col_jul">Senha</th>
			<th id="ex31a_col_jun">Tipo</th>
			<th id="ex31a_col_jul">Editar</th>
			<th id="ex31a_col_jul">Remover</th>


		</tr>

		<c:forEach items="${usuarios}" var="user">
			<tr>
				<td>${user.id}</td>
				<td>${user.login}</td>
				<td>${user.email}</td>
				<td>${user.senha}</td>
				<td>${user.id}</td>
				<td>${user.id}</td>
				<td>${user.id}</td>

			</tr>

		</c:forEach>

	</table>
</div>
