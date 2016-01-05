<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Page content starts -->
<c:url var="url" value="/registrar" />
<div class="content">
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<!-- Some content -->
				<h3 class="title">
					Registre-se Agora<span class="color">!!!</span>
				</h3>
				<h4>Morbi tincidunt posuere turpis eu laoreet</h4>
				<p>Nullam in est urna. In vitae adipiscing enim. Curabitur
					rhoncus condimentum lorem, non convallis dolor faucibus eget. In
					vitae adipiscing enim. Curabitur rhoncus condimentum lorem, non
					convallis dolor faucibus eget. In ut nulla est.</p>
				<h5>Maecenas hendrerit neque id</h5>
				<ul>
					<li>Etiam adipiscing posuere justo, nec iaculis justo dictum
						non</li>
					<li>Cras tincidunt mi non arcu hendrerit eleifend</li>
					<li>Aenean ullamcorper justo tincidunt justo aliquet et
						lobortis diam faucibus</li>
					<li>Maecenas hendrerit neque id ante dictum mattis</li>
					<li>Vivamus non neque lacus, et cursus tortor</li>
				</ul>

				<p>Nullam in est urna. In vitae adipiscing enim. In ut nulla
					est. Nullam in est urna. In vitae adipiscing enim. Curabitur
					rhoncus condimentum lorem, non convallis dolor faucibus eget. In ut
					nulla est.</p>

			</div>

			<!-- Form -->
			<div class="col-md-7">
				<div class="formy well">
					<!-- Title -->
					<h4 class="title">Registrar nova conta</h4>
					<p>&nbsp;</p>
					<div class="form">
						<!-- Register form (not working)-->

						<form:form class="form-horizontal" role="form" action="${url}"
							method="POST" modelAttribute="usuario">
							<div class="form-group">
								<label for="inputName" class="col-lg-3 control-label">Nome</label>
								<div class="col-lg-8">
									<form:input type="text" class="form-control" id="inputName"
										placeholder="Nome" path="nome" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputSnome" class="col-lg-3 control-label">Sobrenome</label>
								<div class="col-lg-8">
									<form:input type="text" class="form-control" id="inputSnome"
										placeholder="Sobrenome" path="snome" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputLogin" class="col-lg-3 control-label">Usuario</label>
								<div class="col-lg-8">
									<form:input type="text" class="form-control" id="inputLogin"
										placeholder="Usuario" path="login" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail1" class="col-lg-3 control-label">Email</label>
								<div class="col-lg-8">
									<form:input type="email" class="form-control" id="inputEmail1"
										placeholder="Email" path="email" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail1" class="col-lg-3 control-label">Repetir
									email</label>
								<div class="col-lg-8">
									<input type="email" class="form-control" id="inputEmail1"
										placeholder="Repetir email">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword1" class="col-lg-3 control-label">Senha</label>
								<div class="col-lg-8">
									<form:input type="password" class="form-control"
										id="inputPassword1" placeholder="Senha" path="senha" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword1" class="col-lg-3 control-label">Repetir
									senha</label>
								<div class="col-lg-8">
									<input type="password" class="form-control" id="inputPassword1"
										placeholder="Repetir senha">
								</div>
							</div>
							<div class="form-group">
								<label for="dropdown" class="col-lg-3 control-label">Tipo</label>
								<div class="col-lg-7">
									<form:select class="form-control" title="Selecione a categoria"
										path="tipo">
										<option value=0>----Selecione um tipo de Usuario----</option>
										<option value=1>Comprador</option>
										<option value=2>Vendedor</option>
									</form:select>
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-offset-3 col-lg-8">
									<div class="checkbox">
										<label> <input type="checkbox"> Eu aceito os
											Termos e Condiçoes
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-offset-3 col-lg-8">
									<button type="submit" class="btn btn-default">Registrar</button>
									<button type="reset" class="btn btn-default">Limpar</button>
								</div>
							</div>
						</form:form>
						<div class="col-lg-offset-7 col-lg-9">
							Ja tem uma conta? <a href="login.html">Login</a>
						</div>
						<hr />
						
					</div>
				</div>

			</div>
		</div>
	</div>
</div>

<!-- Page content ends -->

<!-- CTA Starts -->

<div class="container">
	<div class="cta">
		<div class="row">
			<div class="col-md-5 col-sm-5">
				<div class="ctas">
					<!-- Title and Para -->
					<h5>Professional Product Ever Made in Internet</h5>
					<p>Sed diam nisi, pulvinar vitae molestie vitae molestie
						hendreri hendrerit, venenatis eget mauris.</p>
				</div>
			</div>
			<div class="col-md-4 col-sm-4">
				<div class="ctas">
					<!-- List -->
					<ul>
						<li>Very Cheap in Market. Check it today.</li>
						<li>Professional and Powerful. Don't miss it.</li>
						<li>1000% Guanrantee. No Worries. No Probs.</li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 col-sm-3">
				<div class="ctas">
					<!-- Button -->
					<div class="button">
						<a href="#">Buy it Today for $99</a>
					</div>
					<p>limited period offer</p>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- CTA Ends -->