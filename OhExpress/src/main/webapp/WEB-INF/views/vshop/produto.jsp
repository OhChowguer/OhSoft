<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Main content -->

<div class="col-md-9 col-sm-9">

	<!-- Breadcrumbs -->
	<ul class="breadcrumb">
		<li><a href="index.html">Home</a></li>
		<li><a href="items.html">Smartphone</a></li>
		<li class="active">Apple</li>
	</ul>

	<!-- Product details -->

	<div class="product-main">
		<div class="row">
			<div class="col-md-6 col-sm-6">

				<!-- Image. Flex slider -->
				<div class="product-slider">
					<div class="product-image-slider flexslider">
						<ul class="slides">
							<!-- Each slide should be enclosed inside li tag. -->

							<!-- Slide #1 -->
							<li>
								<!-- Image --> <img
								src="${pageContext.request.contextPath}/imageDisplay?id=${produto.imgProduto.id}"
								alt="" class="img-responsive" />
							</li>

							<!-- Slide #2 -->
							<c:forEach items="${produto.imagens}" var="prods">
								<li><img
									src="${pageContext.request.contextPath}/resources/${prods}"
									alt="" class="img-responsive" /></li>
							</c:forEach>
						</ul>
					</div>
				</div>

			</div>
			<div class="col-md-6 col-sm-6">
				<!-- Title -->
				<h4 class="title">${produto.nome}</h4>


				<h5>
					Preço : R$
					<fmt:formatNumber type="number" pattern="###0.00"
						value="${produto.preco}" />
				</h5>
				<p>Entrega : Não</p>
				<p>Ranking : 8.1</p>
				<p>Promoção : Sim</p>				
				<p>Status : Em estoque</p>
				<p>Opções:</p>
				<!-- Dropdown menu -->
				<div class="form-group">
					
					<select id="selectItensProdutoOp" multiple="multiple"
						class="form-control">
						<c:forEach items="${produto.itemProduto}" var="itens">
						<option>${itens.nome}</option>						
						</c:forEach>
					</select>
				</div>
				<form method="POST" class="form-horizontal"
					action="${pageContext.request.contextPath}/lojas/addprod/${produto.id}">

					<div class="row">
						<div class="col-md-5">
							<div class="input-group">

								<input type="text" class="form-control input-sm" value="1"
									name="qtdprod"> <span class="input-group-btn">
									<button class="btn btn-sm btn-danger" type="submit">Adicionar</button>
								</span>
							</div>
						</div>
					</div>
				</form>
				<!-- Add to wish list -->
				<a href="#">+ Adicionar a lista de desejos</a>


			</div>
		</div>
	</div>

	<br />

	<!-- Description, specs and review -->

	<ul class="nav nav-tabs">
		<!-- Use uniqe name for "href" in below anchor tags -->
		<li class="active"><a href="#tab1" data-toggle="tab">Descrição</a></li>
		<li><a href="#tab2" data-toggle="tab">Composição</a></li>
		<li><a href="#tab3" data-toggle="tab">Comentarios (5)</a></li>
	</ul>

	<!-- Tab Content -->
	<div class="tab-content">
		<!-- Description -->
		<div class="tab-pane active" id="tab1">${produto.descricao}</div>

		<!-- Sepcs -->
		<div class="tab-pane" id="tab2">

			<h5 class="title">Itens do produto</h5>
			<table class="table table-striped tcart">
				<tbody>
				<thead>
					<tr>
						<th>Nome</th>
						<th>Descricao</th>

					</tr>
				</thead>

				<c:forEach items="${produto.itemProduto}" var="itens">

					<tr>
						<td>${itens.nome}</td>
						<td>${itens.descricao}</td>
					</tr>

				</c:forEach>

				</tbody>

			</table>

		</div>

		<!-- Review -->
		<div class="tab-pane" id="tab3">
			<h5>Product Reviews</h5>
			<div class="item-review">
				<h5>
					Ravi Kumar - <span class="color">4/5</span>
				</h5>
				<p class="rmeta">27/1/2012</p>
				<p>Suspendisse potenti. Morbi ac felis nec mauris imperdiet
					fermentum. Aenean sodales augue ac lacus hendrerit sed rhoncus erat
					hendrerit. Vivamus vel ultricies elit. Curabitur lacinia nulla vel
					tellus elementum non mollis justo aliquam.</p>
			</div>

			<hr />
			<h5 class="title">Write a Review</h5>

			<div class="form form-small">

				<!-- Review form (not working)-->
				<form class="form-horizontal">
					<!-- Name -->
					<div class="form-group">
						<label class="control-label col-md-3" for="name2">Your
							Name</label>
						<div class="col-md-6">
							<input type="text" class="form-control" id="name2">
						</div>
					</div>
					<!-- Select box -->
					<div class="form-group">
						<label class="control-label col-md-3">Rating</label>
						<div class="col-md-6">
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

					<!-- Review -->
					<div class="form-group">
						<label class="control-label col-md-3" for="name">Your
							Review</label>
						<div class="col-md-6">
							<textarea class="form-control"></textarea>
						</div>
					</div>
					<!-- Buttons -->
					<div class="form-group">
						<!-- Buttons -->
						<div class="col-md-6 col-md-offset-3">
							<button type="submit" class="btn btn-default">Post</button>
							<button type="reset" class="btn btn-default">Reset</button>
						</div>
					</div>
				</form>
			</div>

		</div>

	</div>

</div>

