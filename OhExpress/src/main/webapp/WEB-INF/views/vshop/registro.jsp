<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="url" value="/lojas/registrar" />
<div class="col-md-12"></div>
<div class="col-md-6">
	<!-- Some content -->
	<h3 class="title">
		Register Today <span class="color">!!!</span>
	</h3>
	<h4>Morbi tincidunt posuere turpis eu laoreet</h4>
	<p>Nullam in est urna. In vitae adipiscing enim. Curabitur rhoncus
		condimentum lorem, non convallis dolor faucibus eget. In vitae
		adipiscing enim. Curabitur rhoncus condimentum lorem, non convallis
		dolor faucibus eget. In ut nulla est.</p>
	<h5>Maecenas hendrerit neque id</h5>
	<div class="lists">
		<ul>
			<li>Etiam adipiscing posuere justo, nec iaculis justo dictum non</li>
			<li>Cras tincidunt mi non arcu hendrerit eleifend</li>
			<li>Aenean ullamcorper justo tincidunt justo aliquet et lobortis
				diam faucibus</li>
			<li>Maecenas hendrerit neque id ante dictum mattis</li>
			<li>Vivamus non neque lacus, et cursus tortor</li>
		</ul>
	</div>
	<p>Nullam in est urna. In vitae adipiscing enim. In ut nulla est.
		Nullam in est urna. In vitae adipiscing enim. Curabitur rhoncus
		condimentum lorem, non convallis dolor faucibus eget. In ut nulla est.
	</p>

</div>

<div class="col-md-6">
	<div class="formy well">
		<h4 class="title">Registre-se</h4>
		<div class="form">
			<!-- Register form (not working)-->
			<form:form class="form-horizontal" role="form" action="${url}" id="formCadComprador"
				method="POST" modelAttribute="usuario">
				<!-- Name -->
				<div class="form-group">
					<label class="control-label col-md-4" for="name1">Nome</label>
					<div class="col-md-8">
						<form:input type="text" class="form-control" id="nomeComprador" required="true"
							placeholder="Nome" path="nome" data-error="Não pode estar em branco" />	
							<span class="help-block with-errors"></span>						
					</div>
					
				</div>
				<!-- SName -->
				<div class="form-group">
					<label class="control-label col-md-4" for="name1">Sombrenome</label>
					<div class="col-md-8">
						<form:input type="text" class="form-control" id="snomeComprador"
							placeholder="Sombrenome" path="snome" required="true" data-error="Não pode estar em branco"/>
							<span class="help-block with-errors"></span>
					</div>
				</div>
				<!-- Email -->
				<div class="form-group">
					<label class="control-label col-md-4" for="email1">Email</label>
					<div class="col-md-8">
						<form:input type="text" class="form-control" id="emailComprador"
							placeholder="Email" path="email" required="true" />
							<span class="help-block with-errors"></span>
					</div>
				</div>
				<!-- Email -->
				<div class="form-group">
					<label class="control-label col-md-4" for="email1" >Repita
						Email</label>
					<div class="col-md-8">
						<input type="text" class="form-control" id="reemailComprador" placeholder="Re-email" data-match="#emailComprador" data-match-error="Email está diferenete" required>
					<span class="help-block with-errors"></span>
					</div>
				</div>
				<!-- Username -->
				<div class="form-group">
					<label class="control-label col-md-4" for="username2">Usuario</label>
					<div class="col-md-8">
						<form:input type="text" class="form-control" id="username2"
							placeholder="Usuario" path="login" data-error="Não pode estar em branco" required="true"/>
							<span class="help-block with-errors"></span>
					</div>
				</div>
				<!-- Password -->
				<div class="form-group">
					<label class="control-label col-md-4" for="password2">Senha</label>
					<div class="col-md-8">
						<form:input type="password" class="form-control" id="passwordComprador"
							placeholder="Senha" path="senha" required="true" data-error="Não pode estar em branco" />
							<span class="help-block with-errors" ></span>
					</div>
				</div>
				<!-- Password -->
				<div class="form-group">
					<label class="control-label col-md-4" for="password2">Repita
						senha</label>
					<div class="col-md-8">
						<input type="password" class="form-control" id="repasswordComprador" placeholder="Re-senha" data-match="#passwordComprador" data-error="Senha diferente" required>
						<span class="help-block with-errors"></span>
					</div>
				</div>
				<!-- Checkbox -->
				<div class="form-group">
					<div class="col-md-8 col-md-offset-4">
						<label class="checkbox-inline"> <input data-error="Necessario aceitar os termos" required type="checkbox"
							id="inlineCheckbox3" value="agree"> Aceito os termos de
							condições
						</label>
						<span class="help-block with-errors"></span>
					</div>
				</div>

				<!-- Buttons -->
				<div class="form-actions">
					<!-- Buttons -->
					<div class="col-md-8 col-md-offset-4">
						<button type="submit" class="btn btn-danger">Registrar</button>

					</div>
				</div>
			</form:form>
			<div class="clearfix"></div>
			<hr />
			<p>

				Já tem uma conta? <a href="login">Entrar</a>
			</p>
		</div>
	</div>

</div>