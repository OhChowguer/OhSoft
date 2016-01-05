<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<h5 class="title">Categorias</h5>
<!-- Sidebar navigation -->
<nav>
	<ul id="nav">
		<!-- Main menu. Use the class "has_sub" to "li" tag if it has submenu. -->
		
		<c:forEach items="${loja.categoriaProduto}" var="cat" end="6">
			<li><a href="${pageContext.request.contextPath}/lojas/listporcat?store=${loja.id}&cat=${cat.id}">${cat.nome}</a></li>
		</c:forEach>

		<!--<li class="has_sub"><a href="#">Smartphone</a>  Submenu 
			<ul>
				<li><a href="items.html">HTC</a></li>
				<li><a href="items.html">Samsung</a></li>
				<li><a href="items.html">Apple</a></li>
				<li><a href="items.html">Motorola</a></li>
				<li><a href="items.html">Nokia</a></li>
			</ul></li>
		<li class="has_sub"><a href="#">Tablet</a>
			<ul>
				<li><a href="items.html">Samsung</a></li>
				<li><a href="items.html">Apple</a></li>
				<li><a href="items.html">Motorola</a></li>
			</ul></li>
		<li class="has_sub"><a href="#">Digital Camera</a>
			<ul>
				<li><a href="items.html">Nikkon</a></li>
				<li><a href="items.html">Samsung</a></li>
				<li><a href="items.html">Sony</a></li>
				<li><a href="items.html">Cannon</a></li>
			</ul></li>
		<li class="has_sub"><a href="#">Computers</a>
			<ul>
				<li><a href="items.html">Dell</a></li>
				<li><a href="items.html">Lenovo</a></li>
				<li><a href="items.html">Apple</a></li>
				<li><a href="items.html">Samsung</a></li>
			</ul></li>
		<li class="has_sub"><a href="#">Software</a>
			<ul>
				<li><a href="items.html">Microsoft</a></li>
				<li><a href="items.html">Nero</a></li>
				<li><a href="items.html">Apple</a></li>
				<li><a href="items.html">Avaira</a></li>
			</ul></li>-->
	</ul>
</nav>