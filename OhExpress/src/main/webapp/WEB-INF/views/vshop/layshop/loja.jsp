
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="url" value="/lojas/produto?prods=" />
<div id="gridProdutosLoja" class="col-md-9 col-sm-9">
	<!-- ios button: show/hide panel -->
	<div class="jplist-ios-button">
		<i class="fa fa-sort"></i> jPList Actions
	</div>
	<div class="row">
		<!-- panel -->
		<div class="jplist-panel">
			<div class="col-md-12 col-sm-8">
				<!-- items per page dropdown -->
				<!-- 
		<div class="jplist-drop-down"
			data-control-type="items-per-page-drop-down"
			data-control-name="paging" data-control-action="paging">

			<ul>
				<li><span data-number="3"> 3 per page </span></li>
				<li><span data-number="5"> 5 per page </span></li>
				<li><span data-number="10" data-default="true"> 10 per
						page </span></li>
				<li><span data-number="all"> View All </span></li>
			</ul>
		</div> -->

				<!-- sort dropdown -->
				<!--  
		<div class="jplist-drop-down" data-control-type="sort-drop-down"
			data-control-name="sort" data-control-action="sort"
			data-datetime-format="{month}/{day}/{year}">-->
				<!-- {year}, {month}, {day}, {hour}, {min}, {sec} -->

				<!--  <ul>
				<li><span data-path="default">Sort by</span></li>
				<li><span data-path=".title" data-order="asc" data-type="text">Title
						A-Z</span></li>
				<li><span data-path=".title" data-order="desc" data-type="text">Title
						Z-A</span></li>
				<li><span data-path=".desc" data-order="asc" data-type="text">Description
						A-Z</span></li>
				<li><span data-path=".desc" data-order="desc" data-type="text">Description
						Z-A</span></li>
				<li><span data-path=".like" data-order="asc" data-type="number"
					data-default="true">Likes asc</span></li>
				<li><span data-path=".like" data-order="desc"
					data-type="number">Likes desc</span></li>
				<li><span data-path=".date" data-order="asc"
					data-type="datetime">Date asc</span></li>
				<li><span data-path=".date" data-order="desc"
					data-type="datetime">Date desc</span></li>
			</ul>
		</div>-->

				<!-- filter by title 
		<div class="text-filter-box">-->

				<!--  <i class="fa fa-search  jplist-icon"></i>-->

				<!--[if lt IE 10]>
				<div class="jplist-label">Filter by Title:</div>
				<![endif]

			<input data-path=".title" type="text" value=""
				placeholder="Filter by Title" data-control-type="textbox"
				data-control-name="title-filter" data-control-action="filter" />
		</div>-->

				<!-- filter by description
		<div class="text-filter-box">

			<i class="fa fa-search  jplist-icon"></i> -->

				<!--[if lt IE 10]>
				<div class="jplist-label">Filter by Description:</div>
				<![endif]

			<input data-path=".desc" type="text" value=""
				placeholder="Filter by Description" data-control-type="textbox"
				data-control-name="desc-filter" data-control-action="filter" />
		</div>-->

				<!-- views -->
				<div class="jplist-views" data-control-type="views"
					data-control-name="views" data-control-action="views"
					data-default="jplist-list-view">

					<button type="button" class="jplist-view jplist-list-view"
						data-type="jplist-list-view"></button>
					<button type="button" class="jplist-view jplist-grid-view"
						data-type="jplist-grid-view"></button>
					<button type="button" class="jplist-view jplist-thumbs-view"
						data-type="jplist-thumbs-view"></button>
				</div>

				<!-- pagination results -->
				<div class="jplist-label" data-type="Page {current} of {pages}"
					data-control-type="pagination-info" data-control-name="paging"
					data-control-action="paging"></div>

				<!-- pagination control -->
				<div class="jplist-pagination" data-control-type="pagination"
					data-control-name="paging" data-control-action="paging"
					data-items-per-page="9"></div>

			</div>
		</div>
	</div>
	<div class="row">
		<div class="list">
		<c:forEach items="${produtos}" var="prod">
			<!-- Item #1 -->
			<div class="list-item">
				
					<div class="col-md-4 col-sm-6">
						<!-- Each item should be enclosed in "item" class -->
						<div class="item">
							<!-- Item image -->
							<div class="item-image">
								<a href="${url}${prod.id}&store=${loja.id}"><img
									src="${pageContext.request.contextPath}/resources/${prod.img}"
									alt="" class="img-responsive" /></a>
							</div>
							<!-- Item details -->
							<div class="item-details">
								<!-- Name -->
								<!-- Use the span tag with the class "ico" and icon link (hot, sale, deal, new) -->
								<h5>
									<a href="single-item.html">${prod.nome}</a><span class="ico"><img
										src="" alt="" /></span>
								</h5>
								<div class="clearfix"></div>
								<!-- Para. Note more than 2 lines. -->
								<p>Something about the product goes here. Not More than 2
									lines.</p>
								<hr />
								<!-- Price -->
								<div class="item-price pull-left">${prod.preco}</div>
								<!-- Add to cart -->
								<div class="button pull-right">
									<a href="${pageContext.request.contextPath}/lojas/addprod/${prod.id}">Adicionar</a>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>

					</div>
				
			</div>
			</c:forEach>
		</div>
		<div class="box jplist-no-results text-shadow align-center">
			<p>No results found</p>
		</div>

	</div>
</div>


