<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Owl Carousel Starts -->
<c:url var="url" value="/lojas/produto?prod=" />
<div class="container">

	<div class="rp">
		<!-- Recent News Starts -->
		<h4 class="title">Itens Recentes</h4>
		<div class="recent-news block">
			<!-- Recent Item -->
			<div class="recent-item">
				<div class="custom-nav">
					<a class="prev"><i class="fa fa-chevron-left br-lblue"></i></a> <a
						class="next"><i class="fa fa-chevron-right br-lblue"></i></a>
				</div>
				<div id="owl-recent" class="owl-carousel">
					<c:forEach items="${loja.produto}" var="prod">
						<!-- Item -->
						<div class="item">
							<a href="${url}${prod.id}&store=${loja.id}"><img
								src="${pageContext.request.contextPath}/imageDisplay?id=${prod.imgProduto.id}"
								alt="" class="img-responsive" /></a>
							<!-- Heading -->
							<h4>
								<a href="${url}${prod.id}&store=${loja.id}">${prod.nome} <span class="pull-right">R$<fmt:formatNumber type="number" pattern="###0.00"
										value="${prod.preco}" /></span></a>
							</h4>
							<div class="clearfix"></div>
							<!-- Paragraph -->
							<p>${prod.descricao}</p>
						</div>
									


					</c:forEach>

				</div>
			</div>
		</div>

		<!-- Recent News Ends -->
	</div>

</div>
<!-- Owl Carousel Ends -->