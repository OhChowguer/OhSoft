<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Header starts -->
<header>
	<div class="container">
		<div class="row">

			<!-- Logo section -->
			<div class="col-md-4">
				<!-- Logo. -->
				<div class="logo">
					<h1>
						<a href="/ohexpress">Oh!<span class="bold">Express</span></a>
					</h1>
					<p class="meta"></p>
				</div>
				<!-- Logo ends -->
			</div>

			<!-- Button section -->
			<div class="col-md-4">

				<!-- Buttons -->
				<ul class="nav nav-pills">

					<!-- Comment button with number of latest comments count -->
					<li class="dropdown dropdown-big"><a class="dropdown-toggle"
						href="#" data-toggle="dropdown"> <i class="fa fa-comments"></i>
							Conversas <span class="label label-info">0</span>
					</a>

						<ul class="dropdown-menu">
							<li>
								<!-- Heading - h5 -->
								<h5>
									<i class="fa fa-comments"></i> Conversas
								</h5> <!-- Use hr tag to add border -->
								<hr />
							</li>
							<li>
								<!-- List item heading h6 -->
								<h6>
									<a href="#">Hi :)</a> <span
										class="label label-warning pull-right">10:42</span>
								</h6>
								<div class="clearfix"></div>
								<hr />
							</li>
							<li>
								<h6>
									<a href="#">How are you?</a> <span
										class="label label-warning pull-right">20:42</span>
								</h6>
								<div class="clearfix"></div>
								<hr />
							</li>
							<li>
								<h6>
									<a href="#">What are you doing?</a> <span
										class="label label-warning pull-right">14:42</span>
								</h6>
								<div class="clearfix"></div>
								<hr />
							</li>
							<li>
								<div class="drop-foot">
									<a href="#">View All</a>
								</div>
							</li>
						</ul></li>
						

					<!-- Message button with number of latest messages count-->
					<li class="dropdown dropdown-big"><a class="dropdown-toggle"
						href="#" data-toggle="dropdown"> <i class="fa fa-envelope"></i>
							Mensagens <span class="label label-primary">0</span>
					</a>

						<ul class="dropdown-menu">
							<li>
								<!-- Heading - h5 -->
								<h5>
									<i class="fa fa-envelope"></i> Mensagens
								</h5> <!-- Use hr tag to add border -->
								<hr />
							</li>
							<li>
								<!-- List item heading h6 -->
								<h6>
									<a href="#">Hello how are you?</a>
								</h6> <!-- List item para -->
								<p>Quisque eu consectetur erat eget semper...</p>
								<hr />
							</li>
							<li>
								<h6>
									<a href="#">Today is wonderful?</a>
								</h6>
								<p>Quisque eu consectetur erat eget semper...</p>
								<hr />
							</li>
							<li>
								<div class="drop-foot">
									<a href="#">View All</a>
								</div>
							</li>
						</ul></li>

					<!-- Members button with number of latest members count -->
					<li class="dropdown dropdown-big"><a class="dropdown-toggle"
						href="#" data-toggle="dropdown"> <i class="fa fa-user"></i>
							Usuarios <span  class="label label-success">0</span>
					</a>

						<ul class="dropdown-menu">
							<li>
								<!-- Heading - h5 -->
								<h5>
									<i class="fa fa-user"></i> Users
								</h5> <!-- Use hr tag to add border -->
								<hr />
							</li>
							<li>
								<!-- List item heading h6-->
								<h6>
									<a href="#">Ravi Kumar</a> <span
										class="label label-warning pull-right">Free</span>
								</h6>
								<div class="clearfix"></div>
								<hr />
							</li>
							<li>
								<h6>
									<a href="#">Balaji</a> <span
										class="label label-important pull-right">Premium</span>
								</h6>
								<div class="clearfix"></div>
								<hr />
							</li>
							<li>
								<h6>
									<a href="#">Kumarasamy</a> <span
										class="label label-warning pull-right">Free</span>
								</h6>
								<div class="clearfix"></div>
								<hr />
							</li>
							<li>
								<div class="drop-foot">
									<a href="#">View All</a>
								</div>
							</li>
						</ul></li>

				</ul>

			</div>

			<!-- Data section -->

			<div class="col-md-4">
				<div class="header-data">

					<!-- Traffic data -->
					<div class="hdata">
						<div class="mcol-left">
							<!-- Icon with red background -->
							<i class="fa fa-signal bred"></i>
						</div>
						<div class="mcol-right">
							<!-- Number of visitors -->
							<p>
								<a href="${pageContext.request.contextPath}/admin/loja/lista" id="LojasCount">0</a> <em>Lojas</em>
							</p>
						</div>
						<div class="clearfix"></div>
					</div>

					<!-- Members data -->
					<div class="hdata">
						<div class="mcol-left">
							<!-- Icon with blue background -->
							<i class="fa fa-user bblue"></i>
						</div>
						<div class="mcol-right">
							<!-- Number of visitors -->
							<p>
								<a href="#" id="UserCount">0</a> <em>Usuarios</em>
							</p>
						</div>
						<div class="clearfix"></div>
					</div>

					<!-- revenue data -->
					<div class="hdata">
						<div class="mcol-left">
							<!-- Icon with green background -->
							<i class="fa fa-money bgreen"></i>
						</div>
						<div class="mcol-right">
							<!-- Number of visitors -->
							<p>
								<a href="#" id="PedidosCount">0</a><em>Pedidos</em>
							</p>
						</div>
						<div class="clearfix"></div>
					</div>

				</div>
			</div>

		</div>
	</div>
</header>

<!-- Header ends -->