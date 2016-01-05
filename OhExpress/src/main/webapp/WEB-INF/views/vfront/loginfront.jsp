<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Page content starts -->

<div class="content">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
                  <!-- Some content -->
                  <h3 class="title">Registre-se agora <span class="color">!!!</span></h3>
                  <h4 >Morbi tincidunt posuere turpis eu laoreet</h4>
                  <p>Nullam in est urna. In vitae adipiscing enim. Curabitur rhoncus condimentum lorem, non convallis dolor faucibus eget. In vitae adipiscing enim. Curabitur rhoncus condimentum lorem, non convallis dolor faucibus eget. In ut nulla est. </p>
                  <h5>Maecenas hendrerit neque id</h5>
                  <ul>
                    <li>Etiam adipiscing posuere justo, nec iaculis justo dictum non</li>
                    <li>Cras tincidunt mi non arcu hendrerit eleifend</li>
                    <li>Aenean ullamcorper justo tincidunt justo aliquet et lobortis diam faucibus</li>
                    <li>Maecenas hendrerit neque id ante dictum mattis</li>
                    <li>Vivamus non neque lacus, et cursus tortor</li>
                  </ul>

                  <p>Nullam in est urna. In vitae adipiscing enim. In ut nulla est. Nullam in est urna. In vitae adipiscing enim. Curabitur rhoncus condimentum lorem, non convallis dolor faucibus eget. In ut nulla est. </p>

                </div>

                <!-- Login form -->
                <div class="col-md-6">
                  <div class="formy well">
                    <!-- Title -->
                     <h4 class="title">Logue-se para entrar na sua conta</h4>
					 <p>&nbsp;</p>
                                  <div class="form">

                                      <!-- Login form (not working)-->
                                      <c:url var="url" value="/admin/log" />	
                                      <form:form class="form-horizontal" action="${url}" role="form" method="POST" modelAttribute="usuario">
                                         <div class="form-group">
                                           <label for="inputEmail1" class="col-lg-2 control-label">Login</label>
                                           <div class="col-lg-8">
                                             <form:input type="text" class="form-control" id="inputEmail1" placeholder="Email ou Usuario" path="login"/>
                                           </div>
                                         </div>
                                         <div class="form-group">
                                           <label for="inputPassword1" class="col-lg-2 control-label">Senha</label>
                                           <div class="col-lg-8">
                                             <form:input type="password" class="form-control" id="inputPassword1" placeholder="Senha" path="senha"/>
                                           </div>
                                         </div>
                                         <div class="form-group">
                                           <div class="col-lg-offset-2 col-lg-8">
                                             <div class="checkbox">
                                               <label>
                                                 <input type="checkbox"> Lembrar meu usuario
                                               </label>
                                             </div>
                                           </div>
                                         </div>
                                         <div class="form-group">
                                           <div class="col-lg-offset-2 col-lg-10">
                                             <button type="submit" class="btn btn-default">Entrar</button>
                                             <button type="reset" class="btn btn-default">Limpar</button>
                                           </div>
                                         </div>
                                       </form:form>
                                      
                                      <hr />

                                      <h5>Nova conta</h5>
                                      <!-- Register link -->
                                             Nao tem uma conta? <a href="/ohexpress/registro">Registre-se</a>
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
          <p>Sed diam nisi, pulvinar vitae molestie vitae molestie hendreri hendrerit, venenatis eget mauris.</p>
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
          <div class="button"><a href="#">Buy it Today for $99</a></div>
          <p>limited period offer</p>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- CTA Ends -->