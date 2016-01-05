<div class="container newsletter">
		<div class="row">
			<div class="col-md-12">
				<div class="well">
					<h5>
						<i class="fa fa-envelope"></i> Ofertas Especiais - Não perca nada!!!
					</h5>
					<p>Cadastre seu e-mail e nao perca nenhuma novidade</p>
					<form class="form-inline" role="form">
						<div class="form-group">
							<input type="email" class="form-control" id="search"
								placeholder="E-mail">
						</div>
						<button type="submit" class="btn btn-default">Cadastrar</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--/ Newsletter ends -->

	<!-- Footer starts -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-4">
							<div class="widget">
								<h5>Contato</h5>
								<hr />
								<div class="social">
									<a href="#"><i class="fa fa-facebook facebook"></i></a> <a
										href="#"><i class="fa fa-twitter twitter"></i></a> <a href="#"><i
										class="fa fa-linkedin linkedin"></i></a> <a href="#"><i
										class="fa fa-google-plus google-plus"></i></a>
								</div>
								<hr />
								<i class="fa fa-home"></i> &nbsp; ${loja.endereco.logradouro}, ${loja.endereco.numero},
								${loja.endereco.cidade}, ${loja.endereco.estado}.
								<hr />
								<i class="fa fa-phone"></i> &nbsp; +55-41-0000-0000
								<hr />
								<i class="fa fa-envelope-o"></i> &nbsp; <a href="mailto:#">ohexpress@ohexpress.com.br</a>
								<hr />
								<div class="payment-icons">
									<img
										src="${pageContext.request.contextPath}/resources/shop/img/payment/americanexpress.gif"
										alt="" /> <img
										src="${pageContext.request.contextPath}/resources/shop/img/payment/visa.gif"
										alt="" /> <img
										src="${pageContext.request.contextPath}/resources/shop/img/payment/mastercard.gif"
										alt="" /> <img
										src="${pageContext.request.contextPath}/resources/shop/img/payment/discover.gif"
										alt="" /> <img
										src="${pageContext.request.contextPath}/resources/shop/img/payment/paypal.gif"
										alt="" />
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="widget">
								<h5>Sobre</h5>
								<hr />
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Cras elementum dolor eget nisi fermentum quis hendrerit magna
									vestibulum. Curabitur pulvinar ornare vulputate scelerisque
									scelerisque ut consectetur. Lorem ipsum dolor sit amet,
									consectetur adipiscing elit. Cras elementum dolor eget nisi
									fermentum quis hendrerit magna vestibulum.</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="widget">
								<h5>Links</h5>
								<hr />
								<div class="two-col">
									<div class="col-left">
										<ul>
											<li><a href="#">Condimentum</a></li>
											<li><a href="#">Etiam at</a></li>
											<li><a href="#">Fusce vel</a></li>
											<li><a href="#">Vivamus</a></li>
											<li><a href="#">Pellentesque</a></li>
											<li><a href="#">Vivamus</a></li>
										</ul>
									</div>
									<div class="col-right">
										<ul>
											<li><a href="#">Condimentum</a></li>
											<li><a href="#">Etiam at</a></li>
											<li><a href="#">Fusce vel</a></li>
											<li><a href="#">Vivamus</a></li>
											<li><a href="#">Pellentesque</a></li>
											<li><a href="#">Vivamus</a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<hr />
					<!-- Copyright info -->
					<p class="copy">
						Copyright &copy; 2015 | <a href="${pageContext.request.contextPath}/lojas?store=${loja.id}">${loja.nome}</a> - <a href="#">Home</a>
						| <a href="#">Sobre</a> | <a href="#">Serviços</a> | <a href="#">Contato-nos
							</a>
					</p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</footer>