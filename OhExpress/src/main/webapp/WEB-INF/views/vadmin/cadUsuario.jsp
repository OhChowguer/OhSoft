
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:url var="url" value="/admin/usuario/criar" />
<!-- Main content starts -->

<div class="content">
	<!-- Main bar -->
	<div class="mainbar">

		<!-- Page heading -->
		<div class="page-head">
			<h2 class="pull-left">
				<i class="fa fa-list-alt"></i> Cadastro de usuario
			</h2>

			<!-- Breadcrumb -->
			<div class="bread-crumb pull-right">
				<a href="index.html"><i class="fa fa-home"></i> Administração</a>
				<!-- Divider -->
				<span class="divider">/</span> <a href="#" class="bread-current">Cadastro
					de usuario</a>
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
								<div class="pull-left">Usuario</div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="fa fa-times"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="widget-content">
								<div class="padd">

									<br />




									<form:form class="form-horizontal" role="form" action="${url}"
										method="POST" modelAttribute="usuario">

										<!-- Registration form starts -->

										<!-- Sr. Sra. -->
										<div class="form-group">
											<label class="control-label col-lg-2">Titulo</label>
											<div class="col-lg-3">
												<select class="form-control">
													<option>&nbsp;</option>
													<option>Sr.</option>
													<option>Sra.</option>
													<option>Dr.</option>
													<option>Dra.</option>
												</select>
											</div>
										</div>
										<!-- Name -->
										<div class="form-group " id="userName">
											<label class="control-label col-lg-2" for="nome">Nome</label>
											<div class="col-lg-3 ">
												<form:input type="text" class="form-control " id="nome"
													path="nome" />

											</div>
										</div>
										<!-- Snome -->
										<div class="form-group">
											<label class="control-label col-lg-2" for="snome">Sobrenome</label>
											<div class="col-lg-6">
												<form:input type="text" class="form-control" id="snome"
													path="snome" />
											</div>
										</div>
										<!-- Email -->
										<div class="form-group">
											<label class="control-label col-lg-2" for="email">Email</label>
											<div class="col-lg-6">

												<form:input type="text" class="form-control" id="email"
													path="email" />
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-lg-2" for="emailConfirma">Repetir
												email</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" id="emailConfirma">
											</div>
										</div>
										<!-- Select box -->
										<div class="form-group">
											<label class="control-label col-lg-2">Tipo usuario</label>
											<div class="col-lg-3">
												<select class="form-control">
													<option>&nbsp;</option>
													<option>Vendedor</option>
													<option>Comprador</option>
												</select>
											</div>
										</div>
										<!-- Username -->
										<div class="form-group">
											<label class="control-label col-lg-2" for="login">Login</label>
											<div class="col-lg-3">
												<form:input type="text" class="form-control" id="login"
													path="login" />
											</div>
										</div>
										<!-- Password -->
										<div class="form-group">
											<label class="control-label col-lg-2" for="senha">Senha</label>
											<div class="col-lg-3">
												<form:input type="password" class="form-control" id="senha"
													path="senha" />
											</div>
										</div>
										<!-- Password -->
										<div class="form-group">
											<label class="control-label col-lg-2" for="senhaConfirma">Repetir
												senha</label>
											<div class="col-lg-3">
												<input type="password" class="form-control"
													id="senhaConfirma">
											</div>
										</div>
										<!-- Accept box and button s-->
										<div class="form-group">
											<div class="col-lg-9 col-lg-offset-2">
												<br />
												<button type="submit" class="btn btn-sm btn-info">Registrar</button>
												<button type="reset" class="btn btn-sm btn-default">Limpar</button>
											</div>
										</div>
									</form:form>

















									<!-- Content goes here -->
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

























<!--  

































		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Cadastro de Usuarios</h1>
			</div>
			
		</div>

		<c:url var="url" value="/admin/criar" />

		<form:form class="form-horizontal" role="form" action="${url}"
			method="POST" modelAttribute="usuario">
			<div class="form-group">
				<label for="inputUsuario" class="col-sm-2 control-label">Usuario</label>
				<div class="col-sm-3">
					<form:input class="form-control" path="login" />
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail" class="col-sm-2 control-label">Email
				</label>
				<div class="col-sm-4">
					<form:input type="email" class="form-control" id="inputEmail"
						path="email" />
				</div>
			</div>
			<div class="form-group">
				<label for="inputRemail" class="col-sm-2 control-label">Repetir
					email</label>
				<div class="col-sm-4">
					<input type="email" class="form-control" id="inputRemail">
				</div>
			</div>
			<div class="form-group">
				<label for="inputSenha" class="col-sm-2 control-label">Senha</label>
				<div class="col-sm-2">
					<form:input type="password" class="form-control" id="inputSenha"
						path="senha" />
				</div>
			</div>
			<div class="form-group">
				<label for="inputLRsenha" class="col-sm-2 control-label">Repetir
					senha</label>
				<div class="col-sm-2">
					<input type="password" class="form-control" id="inputRsenha">
				</div>
			</div>


			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Registrar</button>
				</div>
			</div>
		</form:form>
		
		-->