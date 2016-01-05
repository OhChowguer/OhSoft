
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Main content starts -->

<div class="content">
	<!-- Main bar -->
	<div class="mainbar">

		<!-- Page heading -->
		<div class="page-head">
			<h2 class="pull-left">
				<i class="fa fa-home"></i> Cadastro Materia Prima
			</h2>

			<!-- Breadcrumb -->
			<div class="bread-crumb pull-right">
				<a href="${pageContext.request.contextPath}/admin/resumo"><i class="fa fa-home"></i>
					Admin</a>
				<!-- Divider -->
				<span class="divider">/</span> <a href="#" class="bread-current">Cadastro
					Materia prima</a>
			</div>

			<div class="clearfix"></div>

		</div>
		<!-- Page heading ends -->


		<!-- Matter -->

		<div class="matter">
			<div class="container">
				<div class="row">
					<div class="col-md-12">

						<div class="widget">
							<div class="widget-head">
								<div class="pull-left">Materia prima</div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="fa fa-times"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="widget-content">
								<div class="padd">

									<br />



									<ul id="myTab" class="nav nav-tabs">
										<li class="active"><a href="#home" data-toggle="tab">Geral</a></li>
										<li><a href="#profile" data-toggle="tab">Imagens</a></li>
										<li><a href="#cont" data-toggle="tab">Avançado</a></li>
									</ul>
									<div id="myTabContent" class="tab-content">
										<div class="tab-pane fade in active" id="home">

											<c:url var="url" value="/admin/mp/salvarMp" />
											<form:form class="form-horizontal" role="form"
												action="${url}" method="POST" modelAttribute="materiaPrima">

												<!-- Registration form starts -->

												<!-- Name -->
												<div class="form-group">
													<label class="control-label col-lg-2" for="nome">Nome</label>
													<div class="col-lg-3">
														<form:input type="text" class="form-control" id="nome"
															path="nome" />
													</div>
												</div>

												<!-- Descriçao Materia Prima -->
												<div class="form-group">
													<label class="col-lg-2 control-label"> Descriçao</label>
													<div class="col-lg-5">
														<form:textarea class="form-control" rows="5"
															placeholder="" path="descricao" />
														
													</div>
												</div>
												<div class="form-group">
													<label class="col-lg-2 control-label">Departamento</label>
													<div class="col-lg-4">
														<select class="form-control">
															<option>Pizza</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-lg-2 control-label">Categoria</label>
													<div class="col-lg-4">
														<select class="form-control">
															<option>Pizza</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-lg-2 control-label">Subcategoria</label>
													<div class="col-lg-4">
														<select class="form-control">
															<option>Pizza</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
														</select>
													</div>
												</div>
												<!-- Accept box and button s-->
												<div class="form-group">
													<div class="col-lg-9 col-lg-offset-2">
														<br />
														<button type="submit" class="btn btn-sm btn-info">Cadastrar</button>
														<button type="reset" class="btn btn-sm btn-default">Limpar</button>
													</div>
												</div>
											</form:form>


										</div>
										<div class="tab-pane fade" id="profile">
											<p>Food truck fixie locavore, accusamus mcsweeney's marfa
												nulla single-origin coffee squid. Exercitation +1 labore
												velit, blog sartorial PBR leggings next level wes anderson
												artisan four loko farm-to-table craft beer twee. Qui photo
												booth letterpress, commodo enim craft beer mlkshk aliquip
												jean shorts ullamco ad vinyl cillum PBR. Homo nostrud
												organic, assumenda labore aesthetic magna delectus mollit.
												Keytar helvetica VHS salvia yr, vero magna velit sapiente
												labore stumptown. Vegan fanny pack odio cillum wes anderson
												8-bit, sustainable jean shorts beard ut DIY ethical culpa
												terry richardson biodiesel. Art party scenester stumptown,
												tumblr butcher vero sint qui sapiente accusamus tattooed
												echo park.</p>
										</div>
										<div class="tab-pane fade" id="cont">
											<p>Etsy mixtape wayfarers, ethical wes anderson tofu
												before they sold out mcsweeney's organic lomo retro fanny
												pack lo-fi farm-to-table readymade. Messenger bag gentrify
												pitchfork tattooed craft beer, iphone skateboard locavore
												carles etsy salvia banksy hoodie helvetica. DIY synth PBR
												banksy irony. Leggings gentrify squid 8-bit cred pitchfork.
												Williamsburg banh mi whatever gluten-free, carles pitchfork
												biodiesel fixie etsy retro mlkshk vice blog. Scenester cred
												you probably haven't heard of them, vinyl craft beer blog
												stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
										</div>
									</div>


								</div>
								<div class="widget-foot">
									<!-- Footer goes here -->
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

		<!-- Matter ends -->

	</div>

	<!-- Mainbar ends -->
	<div class="clearfix"></div>

</div>
<!-- Content ends -->