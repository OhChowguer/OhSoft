<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- Main content starts -->

<div class="content">
	<!-- Main bar -->
	<div class="mainbar">

		<!-- Page heading -->
		<div class="page-head">
			<h2 class="pull-left">
				<i class="fa fa-home"></i> Cadastro de Loja
			</h2>

			<!-- Breadcrumb -->
			<div class="bread-crumb pull-right">
				<a href="index.html"><i class="fa fa-home"></i> Admin</a>
				<!-- Divider -->
				<span class="divider">/</span> <a href="#" class="bread-current">Cadastro
					de Loja</a>
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
								<div class="pull-left">Loja</div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="fa fa-times"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="widget-content">
								<div class="padd">

									<!-- COLLAPSE COMEÇA AKIIIIIII -->
									<div class="panel-group" id="accordion" role="tablist"
										aria-multiselectable="true">
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="headingOne">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseOne" aria-expanded="true"
														aria-controls="collapseOne"> Dados Pricipais da loja </a>
												</h4>
											</div>
											<div id="collapseOne" class="panel-collapse collapse in"
												role="tabpanel" aria-labelledby="headingOne">
												<div class="panel-body">
													<br />
													<c:if test="${trans == 'cad'}">
														<c:url var="url" value="/admin/loja/cadastrar" />
													</c:if>
													<c:if test="${trans == 'edit'}">
														<c:url var="url" value="/admin/loja/update/${loja.id }" />
													</c:if>

													<form:form class="form-horizontal" role="form"
														action="${url}" method="POST" modelAttribute="loja"
														enctype="multipart/form-data">
														<legend>Principal</legend>



														<!-- Text input-->
														<div class="form-group">
															<label class="col-lg-2 control-label" for="textinput">Nome
																Loja</label>
															<div class="col-md-6">
																<form:input id="textinput" name="textinput" type="text"
																	placeholder="" class="form-control input-md"
																	required="" path="nome" />
																<span class="help-block">Ex. Pizzaria Curitiba</span>
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-2 control-label" for="textinput">
																Descrição</label>
															<div class="col-md-6">
																<form:input id="textinput" name="textinput" type="text"
																	placeholder="" class="form-control input-md"
																	required="" path="descricao" />
																<span class="help-block">Ex. Pizzaria Curitiba</span>
															</div>
														</div>

														<div class="form-group">
															<label class="col-lg-2 control-label" for="selectbasic">Categorias</label>
															<div class="col-md-6">
																<form:select id="multLoja" title="Selecione a categoria"
																	path="categoria" items="${categorias}" itemValue="id"
																	itemLabel="nome" />
															</div>
														</div>

														<!-- Form Name -->



														<legend>Endereço</legend>

														<!-- Text input-->
														<div class="form-group">
															<label class="col-lg-2 control-label" for="textinput">CEP</label>
															<div class="col-xs-2">
																<form:input id="ceploja" name="cep" type="text"
																	placeholder="" class="form-control input-md"
																	required="" path="endereco.cep" />
																<span class="help-block">Ex. 83326-030</span>
															</div>
														</div>

														<!-- Text input-->
														<div class="form-group">
															<label class="col-lg-2 control-label" for="textinput">Rua</label>
															<div class="col-md-8">
																<form:input id="endereco" name="endereco" type="text"
																	placeholder="" class="form-control input-md"
																	required="" path="endereco.logradouro" />

															</div>
														</div>
														<!-- Text input-->
														<div class="form-group">
															<label class="col-lg-2 control-label" for="textinput">Numero</label>
															<div class="col-md-2">
																<form:input id="numero" name="numero" type="text"
																	placeholder="" class="form-control input-md"
																	required="" path="endereco.numero" />

															</div>
														</div>


														<!-- Text input-->
														<div class="form-group">
															<label class="col-lg-2 control-label" for="textinput">Estado</label>
															<div class="col-md-4">
																<form:input id="estado" name="estado" type="text"
																	placeholder="" class="form-control input-md"
																	required="" path="endereco.estado" />

															</div>
														</div>

														<!-- Text input-->
														<div class="form-group">
															<label class="col-lg-2 control-label" for="textinput">Cidade</label>
															<div class="col-md-4">
																<form:input id="cidade" name="cidade" type="text"
																	placeholder="" class="form-control input-md"
																	required="" path="endereco.cidade" />

															</div>
														</div>

														<!-- Text input-->
														<div class="form-group">
															<label class="col-lg-2 control-label" for="textinput">Bairro</label>
															<div class="col-md-4">
																<form:input id="bairro" name="bairro" type="text"
																	placeholder="" class="form-control input-md"
																	required="" path="endereco.bairro" />

															</div>
														</div>

														<!-- Text input-->
														<div class="form-group">
															<label class="col-lg-2 control-label" for="textinput">Pais</label>
															<div class="col-md-4">
																<form:input id="pais" name="pais" type="text"
																	placeholder="" class="form-control input-md"
																	required="" path="endereco.pais" />

															</div>
														</div>
														<!-- Text input-->
														<div class="form-group">
															<label class="col-lg-2 control-label" for="textinput">Latitude</label>
															<div class="col-md-3">
																<form:input id="latitude" name="latitude" type="text"
																	placeholder="" class="form-control input-md"
																	required="" path="endereco.latitude" />

															</div>
														</div>
														<!-- Text input-->
														<div class="form-group">
															<label class="col-lg-2 control-label" for="textinput">Longitude</label>
															<div class="col-md-3">
																<form:input id="longitude" name="longitude" type="text"
																	placeholder="" class="form-control input-md"
																	required="" path="endereco.longitude" />

															</div>
														</div>
														<c:if test="${trans == 'edit'}">
															<div class="form-group">
																<label class="col-lg-2 control-label" for="textinput">Banner
																	Atual</label>
																<div class="col-md-8">
																	<img height="100" width="100"
																		src="${loja.imgLoja}"
																		alt="" />

																</div>
															</div>

														</c:if>

														<div class="form-group">
															<label class="col-lg-2 control-label" for="textinput">Banner</label>
															<div class="col-md-8">
																<input id="imgTopLoja" name="imgTopLoja" type="file"
																	class="form-control">

															</div>
														</div>


														<div class="form-group">
															<div class="col-lg-9 col-lg-offset-2">
																<br />
																<button type="submit" class="btn btn-sm btn-info">Cadastrar</button>
																<button type="reset" class="btn btn-sm btn-default">Limpar</button>
															</div>
														</div>



													</form:form>

												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="headingTwo">
												<h4 class="panel-title">
													<a class="collapsed" data-toggle="collapse"
														data-parent="#accordion" href="#collapseTwo"
														aria-expanded="false" aria-controls="collapseTwo">
														Imagens da loja </a>
												</h4>
											</div>
											<div id="collapseTwo" class="panel-collapse collapse"
												role="tabpanel" aria-labelledby="headingTwo">
												<div class="panel-body">



													<div class="col-lg-11">
														<div class="image-editor">
															<input id="imgLojaTop" type="file"
																class="cropit-image-input">
															<div class="cropit-image-preview"></div>
															<div class="image-size-label">Resize image</div>
															<input type="range" class="cropit-image-zoom-input">

														</div>
													</div>



												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="headingThree">
												<h4 class="panel-title">
													<a class="collapsed" data-toggle="collapse"
														data-parent="#accordion" href="#collapseThree"
														aria-expanded="false" aria-controls="collapseThree">
														Collapsible Group Item #3 </a>
												</h4>
											</div>
											<div id="collapseThree" class="panel-collapse collapse"
												role="tabpanel" aria-labelledby="headingThree">
												<div class="panel-body">Anim pariatur cliche
													reprehenderit, enim eiusmod high life accusamus terry
													richardson ad squid. 3 wolf moon officia aute, non
													cupidatat skateboard dolor brunch. Food truck quinoa
													nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
													aliqua put a bird on it squid single-origin coffee nulla
													assumenda shoreditch et. Nihil anim keffiyeh helvetica,
													craft beer labore wes anderson cred nesciunt sapiente ea
													proident. Ad vegan excepteur butcher vice lomo. Leggings
													occaecat craft beer farm-to-table, raw denim aesthetic
													synth nesciunt you probably haven't heard of them accusamus
													labore sustainable VHS.</div>
											</div>
										</div>
									</div>
									<!-- COLLAPSE TERMINA AQUIIII -->

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
