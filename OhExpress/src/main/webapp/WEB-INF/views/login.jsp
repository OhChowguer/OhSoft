<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:url var="url" value="/admin/log" />



<!-- Form area -->
<div class="admin-form">
  <div class="container">

    <div class="row">
      <div class="col-md-12">
        <!-- Widget starts -->
            <div class="widget worange">
              <!-- Widget head -->
              <div class="widget-head">
                <i class="fa fa-lock"></i> Login 
              </div>

              <div class="widget-content">
                <div class="padd">
                  <!-- Login form -->
                  <form:form class="form-horizontal" action="${url}" method="POST" modelAttribute="usuario">
                 
                    <!-- Email -->
                    <div class="form-group">
                      <label class="control-label col-lg-3" for="inputEmail">Email/Usuario</label>
                      <div class="col-lg-9">
                      <form:input class="form-control" placeholder=""
									type="text" path="login" />
                        
                      </div>
                    </div>
                    <!-- Password -->
                    <div class="form-group">
                      <label class="control-label col-lg-3" for="inputPassword">Senha</label>
                      <div class="col-lg-9">
                      <form:input class="form-control" id="inputPassword" placeholder=""
									type="password" path="senha" />
                        
                      </div>
                    </div>
                    <!-- Remember me checkbox and sign in button -->
                    <div class="form-group">
					<div class="col-lg-9 col-lg-offset-3">
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> Lembrar usuario
                        </label>
						</div>
					</div>
					</div>
                        <div class="col-lg-9 col-lg-offset-3">
							<button type="submit" class="btn btn-info btn-sm">Entrar</button>
							<button type="reset" class="btn btn-default btn-sm">limpar</button>
						</div>
                    <br />
                  </form:form>
				  
				</div>
                </div>
              
                <div class="widget-foot">
                  Nao e registrado? <a href="${pageContext.request.contextPath}/registro">Registre-se aqui</a>
                </div>
            </div>  
      </div>
    </div>
  </div> 
</div>



















