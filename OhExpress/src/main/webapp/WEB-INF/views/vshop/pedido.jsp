<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="total" value="${0}" />
<c:url var="urlProd" value="/lojas/produto?prod=" />
<c:url var="url" value="/lojas/addpedido?store=${lojaId}&" />
<!-- Cart starts -->
<!-- Form starts.  -->

<div class="cart">
	<div class="container">


		<div class="row">
			

				<!-- Title with number of items in shopping kart -->
				<h3 class="title">
					<i class="fa fa-shopping-cart"></i> Itens do seu carrinho [<span
						class="color">${fn:length(pedido.item)}</span>]
				</h3>
				<br />


				<!-- Table -->
				<table class="table table-striped tcart">
					<thead>
						<tr>
							<th>#</th>
							<th>Nome</th>
							<th>Quantidade</th>
							<th>Preço Unitário</th>
							<th>Total</th>
						</tr>
					</thead>
					<tbody>


						<c:forEach items="${pedido.item}" var="itemPed">

							<tr>
								<!-- Index -->
								<td>1</td>
								<!-- Product  name -->
								<td><a
									href="${urlProd}${itemPed.produto.id}&store=${loja.id}">${itemPed.produto.nome}</a></td>

								<!-- Quantity with refresh and remove button -->
								<td class="item-input">
									<div class="input-group">
										<input class="form-control" type="text"
											value="${itemPed.quantidade}"> <span
											class="input-group-btn">
											<button class="btn btn-default" type="button">
												<i class="fa fa-refresh"></i>
											</button>
											<button class="btn btn-danger" type="button">
												<i class="fa fa-times"></i>
											</button>
										</span>
									</div>
								</td>
								<!-- Unit price -->
								<td>R$<fmt:formatNumber type="number" pattern="###0.00"
										value="${itemPed.produto.preco}" /></td>
								<!-- Total cost -->
								<td>R$<fmt:formatNumber type="number" pattern="###0.00"
										value="${itemPed.produto.preco*itemPed.quantidade}" /></td>
							</tr>
							<c:set var="total"
								value="${total + itemPed.produto.preco*itemPed.quantidade}" />
						</c:forEach>
						<tr>
							<th></th>
							<th></th>
							<th></th>
							<th>Total</th>
							<th>R$<fmt:formatNumber type="number" pattern="###0.00"
									value="${total}" /></th>
						</tr>
					</tbody>
				</table>

				<!--  
					<form class="form-inline">
						
						<h5 class="title">Cupom de desconto</h5>
						<div class="form-group">
							<input type="email" class="form-control" id=""
								placeholder="Cupom de desconto">
						</div>

						<button type="submit" class="btn btn-default">Aplicar</button>
						<br /> <br />

					</form>-->

				<!-- Title -->
				<h5 class="title">Detalhes do pagamento</h5>

				<!-- Radio buttons to select payment type -->
				<form:form class="form-horizontal" role="form" action="${url }"
					method="GET" modelAttribute="pedido">
					<label class="radio-inline"> <input type="radio"
						name="pagForm" id="optionsRadios1" value="1" checked>
						Dinheiro
					</label>
					<!--  
					<label class="radio-inline"> <input type="radio"
						name="optionsRadios" id="optionsRadios2" value="2"> Cartao
						de Credito
					</label>
					<label class="radio-inline"> <input type="radio"
						name="optionsRadios" id="optionsRadios3" value="3">
						Pagamento Online
					</label>
					<label class="radio-inline"> <input type="radio"
						name="optionsRadios" id="optionsRadios4" value="4">
						Cartao de Debito
					</label>
					<label class="radio-inline"> <input type="radio"
						name="optionsRadios" id="optionsRadios5" value="5"> Paypal
					</label>
-->
					<hr />















					<!--  
						<div class='col-md-10'>
							<div class='col-md-12 form-group'>
								<div class="form-row">
									<h1>Dados do Cartao de credito</h1>
									<hr class="featurette-divider"></hr>
									<p>NOTA: Confira os dados antes de confirmar o pedido</p>
									<hr class="featurette-divider"></hr>
								</div>
							</div>

							<script src='https://js.stripe.com/v2/' type='text/javascript'></script>
							<form accept-charset="UTF-8" action="/"
								class="require-validation" data-cc-on-file="false"
								data-stripe-publishable-key="pk_bQQaTxnaZlzv4FnnuZ28LFHccVSaj"
								id="payment-form" method="post">
								<div style="margin: 0; padding: 0; display: inline">
									<input name="utf8" type="hidden" value="✓" /><input
										name="_method" type="hidden" value="PUT" /><input
										name="authenticity_token" type="hidden"
										value="qLZ9cScer7ZxqulsUWazw4x3cSEzv899SP/7ThPCOV8=" />
								</div>
								<br>
								<div class='form-row'>
									<div class='col-xs-12 form-group required'>
										<label class='control-label'>Nome do titular do cartao</label> <input
											class='form-control' size='4' type='text'>
									</div>

								</div>
								<div class='form-row'>
									<div class='col-xs-12 form-group card required'>
										<label class='control-label'>Numero do cartao</label> <input
											autocomplete='off' class='form-control card-number' size='20'
											type='text'>
									</div>
								</div>
								<div class='form-row'>
									<div class='col-xs-12 form-group card required'>
										<label class='control-label'>Endereco da fatura do cartao</label> <input
											autocomplete='off' class='form-control' size='20' type='text'>
									</div>
								</div>
								<div class='form-row'>
									<div class='col-xs-4 form-group cvc required'>
										<label class='control-label'>CVC</label> <input
											autocomplete='off' class='form-control card-cvc'
											placeholder='ex. 311' size='4' type='text'>
									</div>
									<div class='col-xs-4 form-group expiration required'>
										<label class='control-label'>Data de validade</label> <input
											class='form-control card-expiry-month' placeholder='MM'
											size='2' type='text'>
									</div>
									<div class='col-xs-4 form-group expiration required'>
										<label class='control-label'> </label> <input
											class='form-control card-expiry-year' placeholder='YYYY'
											size='4' type='text'>
									</div>
								</div>


								<div class='form-row'>
									<div class='col-md-12 form-group'>
										<hr class="featurette-divider"></hr>

										<div class='error form-group hide'>
											<div class='alert-danger alert'>Please correct the
												errors and try again.</div>
										</div>
										<div class="jumbotron jumbotron-flat">
											<div class="center">
												<small><b>Por favor confira o total de sua compra</b></small>
											</div>
											<div class="paymentAmt">$100</div>



										</div>


									</div>
								</div>


							</form>
						</div>
					</div>

					<div class='col-md-4'></div>
				</div>-->





















					<!-- Confirm order button -->

					<div class="form-group">
						<div class="row">
							<div class="col-md-4 col-md-offset-10">
								<button type="submit" class="btn  btn-danger"
									<c:if test="${fn:length(pedido.item)<1}"> disabled </c:if>>
									Confirmar pedido</button>
							</div>

						</div>
					</div>
				</form:form>
			</div>
		</div>

	</div>

<!-- Cart ends -->