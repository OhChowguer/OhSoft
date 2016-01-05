<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Sidebar items (featured items)-->
<c:url var="url" value="/lojas/produto?prod=" />
<div class="sidebar-items">

	<h5 class="title">Destaques</h5>
<c:forEach items="${loja.produto}" var="prod" end="5">
	<!-- Item #1 -->
	<div class="sitem">
		<!-- Don't forget the class "onethree-left" and "onethree-right" -->
		<div class="onethree-left">
			<!-- Image -->
			<a href="single-item.html"><img
				src="${pageContext.request.contextPath}/imageDisplay?id=${prod.imgProduto.id}"
				alt="" class="img-responsive" /></a>
		</div>
		<div class="onethree-right">
			<!-- Title -->
			<a href="${url}${prod.id}&store=${loja.id}">${prod.nome}</a>
			<!-- Para -->
			<p>Status: Em estoque</p>
			<p>Oferta: Sim</p>
			<!-- Price -->
			<p class="bold">R$<fmt:formatNumber type="number" pattern="###0.00"
										value="${prod.preco}" /></p>
		</div>
		<div class="clearfix"></div>
	</div>
</c:forEach>
</div>