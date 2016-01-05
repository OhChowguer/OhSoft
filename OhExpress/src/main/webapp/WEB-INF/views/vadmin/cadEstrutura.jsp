<!-- Main content starts -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${trans == 'cad'}">
	<c:url var="url" value="/admin/categorias/cadastrar" />
</c:if>
<c:if test="${trans == 'edit'}">
	<c:url var="url" value="/admin/categorias/update/${categoria.id }" />
</c:if>
<div class="content">

	<!-- Main bar -->
	<div class="mainbar">

		<!-- Page heading -->
		<div class="page-head">
			<h2 class="pull-left">
				<i class="fa fa-home"></i> Cadastro de Estruturas
			</h2>

			<!-- Breadcrumb -->
			<div class="bread-crumb pull-right">
				<a href="index.html"><i class="fa fa-home"></i> Admin</a>
				<!-- Divider -->
				<span class="divider">/</span> <a href="#" class="bread-current">Cadastro
					de Estruturas</a>
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
								<div class="pull-left">Estruturas</div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="fa fa-times"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="widget-content">
								<div class="padd">
									<!-- Content goes here -->
									<form:form class="form-horizontal" role="form" action="${url}"
										method="POST" modelAttribute="categoria"
										enctype="multipart/form-data">

										<!-- Accept box and button s-->
										<div class="form-group">
											<div class="col-lg-10 col-lg-offset-10">
												<br />
												<button type="submit" class="btn btn-lg btn-info">
													<i class="fa fa-save"></i>
												</button>
												<a  href="${pageContext.request.contextPath}/admin/categorias/lista" class="btn btn-lg btn-danger">
													<i class="fa fa-times"></i>
												</a>
											</div>
										</div>
										<ul id="myTab" class="nav nav-tabs">
											<li class="active"><a href="#departamento"
												data-toggle="tab">Categoria</a></li>

										</ul>



										<div id="myTabContent" class="tab-content">
											<div class="tab-pane fade in active" id="departamento">
												<br />
												<!-- Formulario para cadastro de DEPARTAMENTO -->


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
													<label class="control-label col-lg-2" for="nome">Imagem</label>
													<div class="col-lg-3">
														<input type="file" class="cropit-image-input"
															id="imgCatCad" name="imgCat">
													</div>
												</div>


											</div>

											<br />


										</div>
									</form:form>
									<!-- FIM FORMULARIO DEPARTAMENTO -->
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


<!-- Content ends -->