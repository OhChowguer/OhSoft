<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<div class="container">
		<div class="row">



			<div class="col-md-9 col-sm-9">
				<!-- Title -->
				<h4 class="title">Confirmação</h4>

				<h5>${usuarioComprador.nome}, obrigado por comprar com
					${loja.nome}</h5>
				<p>
					Numero do seu pedido é <strong><fmt:formatNumber
							pattern="0000000000" value="${cPedido.id}" /></strong>.
				<p>
					
					Seu pedido está em status de <strong>
					<c:if test="${cPedido.status==1}"><span class="label label-warning">ESPERA</span></c:if>
					<c:if test="${cPedido.status==2}"><span class="label label-success">ACEITO</span></c:if>
					<c:if test="${cPedido.status==3}"><span class="label label-info">FINALIZADO</span></c:if>
					<c:if test="${cPedido.status==4}"><span class="label label-danger">FECHADO</span></c:if>
					
					</strong>
				<p>
					Acompenha o status do se pedido em é <strong><a href="historicopedido">Histórico
							de Pedidos</a> </strong>.
				<hr />
				<!-- Some links -->
				<div class="horizontal-links">
					<h5>Dê uma olhada em nosso site</h5>
					<a href="#">Home</a> <a href="#">Sobre</a> <a href="#">Suporte</a>
					<a href="#">Contato</a> <a href="#">Sugestões</a>
				</div>
				<hr />
				<!-- Search form -->
				<div class="form">
					<form class="form-inline" role="form">
						<div class="form-group">
							<input type="email" class="form-control" id="search"
								placeholder="">
						</div>

						<button type="submit" class="btn btn-default">Pesquisa</button>
					</form>
				</div>
			</div>
		</div>
	</div>
