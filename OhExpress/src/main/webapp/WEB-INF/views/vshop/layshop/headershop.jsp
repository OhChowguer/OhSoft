<!-- Cart, Login and Register form (Modal) -->
<!-- Cart Modal starts -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="total" value="${0}" />
<c:url var="url" value="/logincliente" />
<div id="cart" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h4>Carrinho</h4>
			</div>
			<div class="modal-body">

				<c:if test="${fn:length(itensPedido)>0}">
					<table class="table table-striped tcart">
						<thead>
							<tr>
								<th>Nome</th>
								<th>Quantidade</th>
								<th>Preco Unitario</th>
								<th>Preco Total</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${itensPedido}" var="itemPed">
								<tr>
									<td><a
										href="${pageContext.request.contextPath}/lojas/produto?prod=${itemPed.produto.id}">${itemPed.produto.nome}</a></td>
									<td>${itemPed.quantidade}</td>
									<td>R$<fmt:formatNumber type="number" pattern="###0.00"
											value="${itemPed.produto.preco}" /></td>
									<td>R$<fmt:formatNumber type="number" pattern="###0.00"
											value="${itemPed.produto.preco*itemPed.quantidade}" /></td>
								</tr>
								<c:set var="total"
									value="${total + itemPed.produto.preco*itemPed.quantidade}" />
							</c:forEach>

							<tr>
								<th></th>
								<th></th>
								<th>Total:</th>
								<th>R$<fmt:formatNumber type="number" pattern="###0.00"
										value="${total}" /></th>
							</tr>
						</tbody>
					</table>
				</c:if>

				<c:if test="${fn:length(itensPedido)<1}">
					SEU CARRINHO ESTA VAZIO!
				</c:if>

			</div>
			<div class="modal-footer">


				<a data-dismiss="modal" class="btn">Continuar Comprando</a> <a
					href="${pageContext.request.contextPath}/conta/pedido"
					class="btn btn-danger"
					<c:if test="${fn:length(itensPedido)<1}"> disabled </c:if>>Finalizar</a>
			</div>
		</div>
	</div>
</div>
<!--/ Cart modal ends -->

<!-- Login Modal starts -->
<div id="login" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h4>Login</h4>
			</div>
			<div class="modal-body">
				<div class="form">

					<form class="form-horizontal" role="form" action="${url}"
						method="POST" >

						<!--  <form class="form-horizontal">  </form> -->
						<div class="form-group">
							<label class="control-label col-md-3" for="username">Usuario</label>
							<div class="col-md-7">
								<input type="text" name="login" class="form-control"
									id="loginComprador" >
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3" for="email">Senha</label>
							<div class="col-md-7">
								<input type="password" class="form-control"
									id="senhaComprador" name="senha">
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-7 col-md-offset-3">
								<div class="checkbox inline">
									<label> <input type="checkbox" id="inlineCheckbox1"
										value="agree"> Lembrar senha
									</label>
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-7 col-md-offset-3">
								<button type="submit" class="btn btn-default">Entrar</button>
								
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="modal-footer">
				<p>
					Ainda não tem conta? <a
						href="${pageContext.request.contextPath}/lojas/registro">Registre-se</a>
					aqui.
				</p>
			</div>
		</div>
	</div>
</div>
<!--/ Login modal ends -->

<!-- Register Modal starts -->
<div id="register" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h4>Register</h4>
			</div>
			<div class="modal-body">
				<div class="form">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="control-label col-md-3" for="name">Name</label>
							<div class="col-md-7">
								<input type="text" class="form-control" id="name">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3" for="email">Email</label>
							<div class="col-md-7">
								<input type="text" class="form-control" id="email">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Drop Down</label>
							<div class="col-md-7">
								<select class="form-control">
									<option>&nbsp;</option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3" for="username1">Username</label>
							<div class="col-md-7">
								<input type="text" class="form-control" id="username1">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3" for="password1">Password</label>
							<div class="col-md-7">
								<input type="password" class="form-control" id="password1">
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-7 col-md-offset-3">
								<div class="checkbox inline">
									<label> <input type="checkbox" id="inlineCheckbox2"
										value="agree"> Agree with Terms and Conditions
									</label>
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-9 col-md-offset-3">
								<button type="submit" class="btn btn-default">Register</button>
								<button type="reset" class="btn btn-default">Reset</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="modal-footer">
				<p>
					Already have account? <a href="login.html">Login</a> here.
				</p>
			</div>
		</div>
	</div>
</div>
<!--/ Register modal ends -->

<!-- Header starts -->
<header>
	<div class="container">
		<div class="row">
			
				<div class="col-md-2">
					<div class="logo">
						<a
							href="${pageContext.request.contextPath}/lojas?store=${loja.id}"><img
							src="${loja.imgLoja}"
							alt="" class="img-responsive"  /></a>
					</div>
				</div>

		
			
			<div class="col-md-5 col-md-offset-5 ">


				<div class="hlinks">
				
					 <span class="shopping-cart"> <a href="#cart"
						role="button" data-toggle="modal"> ${fn:length(itensPedido)}
							Iten(s) <i class="fa fa-shopping-cart"></i>
					</a> -<span class="bold">R$<fmt:formatNumber type="number"
								pattern="###0.00" value="${total}" /></span>
					</span>

					<c:if test="${usuarioComprador==null}">
						<!-- Login and Register link -->
						<span class="lr"><a href="${pageContext.request.contextPath}/lojas/login" role="button"
							data-toggle="modal">Entrar</a> ou <a href="${pageContext.request.contextPath}/lojas/registro"
							role="button" data-toggle="modal">Registre-se</a></span>
					</c:if>
					<c:if test="${usuarioComprador!=null}">
						<!-- Login and Register link -->
						<span class="lr">Bem vindo! <a href="${pageContext.request.contextPath}/conta/minhaconta" role="button">${usuarioComprador.login}</a></span>
						<span class="lr"><a href="${pageContext.request.contextPath}/conta/sair" role="button">Sair</a></span>
					</c:if>
				</div>

			</div>
		</div>
	</div>
</header>
