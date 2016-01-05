<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:url var="url" value="/logincliente" />
<div class="col-md-12"></div>
<div class="content">
	<div class="container">
		<div class="row">
			<div class="col-md-6">

				<!-- Some content -->
				<h3 class="title">
					Login to Shop <span class="color">!!!</span>
				</h3>
				<h4>Morbi tincidunt posuere turpis eu laoreet</h4>
				<p>Nullam in est urna. In vitae adipiscing enim. Curabitur
					rhoncus condimentum lorem, non convallis dolor faucibus eget. In
					vitae adipiscing enim. Curabitur rhoncus condimentum lorem, non
					convallis dolor faucibus eget. In ut nulla est.</p>
				<h5>Maecenas hendrerit neque id</h5>
				<div class="lists">
					<ul>
						<li>Etiam adipiscing posuere justo, nec iaculis justo dictum
							non</li>
						<li>Cras tincidunt mi non arcu hendrerit eleifend</li>
						<li>Aenean ullamcorper justo tincidunt justo aliquet et
							lobortis diam faucibus</li>
						<li>Maecenas hendrerit neque id ante dictum mattis</li>
						<li>Vivamus non neque lacus, et cursus tortor</li>
					</ul>
				</div>
				<p>Nullam in est urna. In vitae adipiscing enim. In ut nulla
					est. Nullam in est urna. In vitae adipiscing enim. Curabitur
					rhoncus condimentum lorem, non convallis dolor faucibus eget. In ut
					nulla est.</p>

			</div>


			<!-- Login form -->
			<div class="col-md-6">
				<div class="formy well">
					<h4 class="title">Entrar</h4>
					<div class="form">

						<!-- Login  form (not working)-->
						<form class="form-horizontal" role="form" action="${url}" id="formLoginComprador"
							method="POST">
							<!-- Username -->
							<div class="form-group">
								<label class="control-label col-md-3" for="username2">Usuario</label>
								<div class="col-md-8">
									<input type="text" name="login" class="form-control"
										id="loginComprador" required>
										<span class="help-block with-errors"></span>
								</div>
							</div>
							<!-- Password -->
							<div class="form-group">
								<label class="control-label col-md-3" for="password2">Senha</label>
								<div class="controls col-md-8">
									<input type="password" class="form-control" id="senhaComprador"
										name="senha" required>
										<span class="help-block with-errors"></span>
								</div>
							</div>
							<!-- Checkbox -->
							<div class="form-group">
								<div class="col-md-8 col-md-offset-3">
									<label class="checkbox-inline"> <input type="checkbox"
										id="inlineCheckbox3" value="agree"> Lembrar usuario e
										senha
									</label>
								</div>
							</div>

							<!-- Buttons -->
							<div class="form-group">
								<!-- Buttons -->
								<div class="col-md-8 col-md-offset-3">
									<button type="submit" class="btn btn-danger">Entrar</button>

								</div>
							</div>
						</form>
						<hr />
						<h5>Nova conta</h5>
						Ainda não tem conta? <a href="registro">Register</a>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>