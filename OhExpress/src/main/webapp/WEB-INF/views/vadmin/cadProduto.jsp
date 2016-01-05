<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<fmt:setLocale value="pt_BR" scope="session" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<c:if test="${trans == 'cad'}">
	<c:url var="url" value="/admin/produto/cadastrar" />
</c:if>
<c:if test="${trans == 'edit'}">
	<c:url var="url" value="/admin/produto/update/${produto.id }" />
</c:if>
<!-- Main content starts -->

<div class="content">
	<!-- Main bar -->
	<div class="mainbar">

		<!-- Page heading -->
		<div class="page-head">
			<h2 class="pull-left">
				<i class="fa fa-list-alt"></i> Cadastro de produto
			</h2>

			<!-- Breadcrumb -->
			<div class="bread-crumb pull-right">
				<a href="index.html"><i class="fa fa-home"></i> Administração</a>
				<!-- Divider -->
				<span class="divider">/</span> <a href="#" class="bread-current">Cadastro
					de produto</a>
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
								<div class="pull-left">Produto</div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="fa fa-times"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>
							<!-- Form starts.  -->
							<form:form class="form-horizontal" role="form" action="${url}"
								method="POST" modelAttribute="produto"
								enctype="multipart/form-data">
								<div class="widget-content">
									<div class="padd">
										<br />

										<!-- Accept box and button s-->
										<div class="form-group">
											<div class="col-lg-10 col-lg-offset-10">
												<br />
												<button type="submit" class="btn btn-lg btn-info">
													<i class="fa fa-save"></i>
												</button>
												<a href="${pageContext.request.contextPath}/admin/produto/lista"
													class="btn btn-lg btn-danger"> <i class="fa fa-times"></i>
												</a>
												
											</div>
										</div>
										<ul id="myTab" class="nav nav-tabs">
											<li class="active"><a href="#home" data-toggle="tab">Geral</a></li>
											<li><a href="#cont" data-toggle="tab">Dados</a></li>
											<li><a href="#profile" data-toggle="tab">Imagens</a></li>
											<li><a href="#comp" data-toggle="tab">Composição</a></li>
											<li><a href="#relacionamentos" data-toggle="tab">Relacionamentos</a></li>
											<li><a href="#descontos" data-toggle="tab">Descontos</a></li>
											<li><a href="#promo" data-toggle="tab">Promoçoes</a></li>

										</ul>
										<div id="myTabContent" class="tab-content">
											<div class="tab-pane fade in active" id="home">


												<div class="widget-content">
													<div class="padd">

														<br />


														<div class="form-group">
															<label class="col-lg-2 control-label">Nome
																Produto</label>
															<div class="col-lg-10">
																<form:input type="text" class="form-control"
																	placeholder="" path="nome" />
															</div>
														</div>


														<div class="form-group">
															<label class="col-lg-2 control-label">Descriçao </label>
															<div class="col-lg-10">
																<form:textarea class="cleditor" name="input"
																	path="descricao"></form:textarea>
															</div>
														</div>

														<div class="form-group">
															<label class="col-lg-2 control-label">
																Autocomplete</label>
															<div class="col-lg-10">
																<textarea class="form-control" rows="8" placeholder=""></textarea>
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-2 control-label"> Meta tags</label>
															<div class="col-lg-10">
																<textarea class="form-control" rows="8" placeholder=""></textarea>
															</div>
														</div>

													</div>
												</div>
											</div>
											<!-- SEGUNDA ABA ----------------------------- -->
											<div class="tab-pane fade" id="profile">
												<div class="widget">
													<div class="widget-head">
														<div class="pull-left">Imagens</div>
														<div class="widget-icons pull-right">
															<a href="#" class="wminimize"><i
																class="fa fa-chevron-up"></i></a> <a href="#" class="wclose"><i
																class="fa fa-times"></i></a>
														</div>
														<div class="clearfix"></div>
													</div>
													<br />
													<!-- IMAGENS -->
													<div class="container">



														<div class="row">

															<!-- Page heading starts -->

															<div class="col-md-12">

																<table cellpadding="0" cellspacing="0" border="0"
																	class="table table-striped table-bordered" id="example">

																	<tbody id="list1">

																		<tr class="list1_var">
																			<td><input type="file" size="40"
																				name_format="listImgProd" name="listImgProd"
																				id="list1_0" class="test"></td>

																			<td><button type="button"
																					class="list1_del btn btn-md btn-danger">
																					<i class="fa fa-times"></i>
																				</button></td>
																		</tr>
																	</tbody>
																</table>

															</div>
															<div class="col-md-1 col-md-offset-11">
																<button type="button"
																	class="list1_add btn btn-md btn-success">
																	<i class="fa fa-file"> </i>
																</button>
															</div>
														</div>

													</div>
													<!-- FIM DAS IMAGENS -->
												</div>
											</div>
											<div class="tab-pane fade" id="comp">
												<br />
												<legend></legend>
												<!-- Select Categorias-->
												<div class="form-group">
													<label class="col-lg-2 control-label" for="selectbasic">Itens
														do Produto</label>
													<div class="col-md-6">


														<form:select id="multLoja" title="Selecione a o item"
															path="itemProduto" items="${itensProduto}" itemValue="id"
															itemLabel="nome" />

													</div>
												</div>


											</div>
											<div class="tab-pane fade" id="cont">
												<br />
												<legend></legend>
												<div class="form-group">
													<label class="control-label col-lg-2" for="nome">Imagem</label>
													<div class="col-lg-3">
														<input type="file" class="cropit-image-input"
															id="imgCatCad" name="imgCadProd">
													</div>
												</div>
												<legend></legend>
												<!-- Prepended text-->
												<div class="form-group">
													<label class="col-md-2 control-label" for="prependedtext">Preço</label>
													<div class="col-md-2">
														<div class="input-append input-group">
															<span class="input-group-addon add-on"> R$ </span>
															<form:input id="prependedtext" name="prependedtext"
																class="form-control" placeholder="" type="text"
																path="preco" />
														</div>

													</div>
												</div>
												<div class="form-group">
													<label class="col-md-2 control-label" for="prependedtext">Data
														cadastro</label>
														
														
													<div class="col-lg-2">
														<form:input readonly="true" class="form-control" 
															path="dataCadastro" />
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-2 control-label" for="prependedtext">Data
														validade</label>
													<div class="col-md-10">
														<div id="datetimepicker3"
															class="input-append input-group dtpicker">
															<input data-format="dd-MM-yyyy" type="text"
																class="form-control"> <span
																class="input-group-addon add-on"> <i
																data-time-icon="fa fa-times"
																data-date-icon="fa fa-calendar"></i>
															</span>
														</div>
													</div>
												</div>

											</div>


											<div class="tab-pane fade" id="relacionamentos">
												<br />
												<legend></legend>
												<!-- Select Categorias-->
												<div class="form-group">
													<label class="col-lg-2 control-label" for="selectbasic">Categorias
														do produto:</label>
													<div class="col-md-6">
														<form:select id="multLoja" title="Selecione a categoria"
															path="categoriaProduto" items="${categorias}" itemValue="id"
															itemLabel="nome" />

													</div>
												</div>

												<!-- Select Lojas-->
												<div class="form-group">
													<label class="col-lg-2 control-label" for="selectbasic">Lojas
														do produto:</label>
													<div class="col-md-6">
														<form:select id="multLoja" title="Selecione a loja"
															path="loja" items="${lojas}" itemValue="id"
															itemLabel="nome" />
													</div>
												</div>
											</div>
										</div>

										<!-- Content goes here -->
									</div>
									<div class="widget-foot">

										<!-- Footer goes here -->
									</div>
								</div>
							</form:form>
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
