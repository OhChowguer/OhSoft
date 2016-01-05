<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="items">
  <div class="container">
    <div class="row">

      <!-- Main bar -->
      <div class="col-md-9 col-sm-9">
        <!-- Title -->
          <h5 class="title">Editar conta</h5>

          <div class="form form-small">
                                      <!-- Edit profile form (not working)-->
                                      <form class="form-horizontal">
                                          <!-- Name -->
                                          <div class="form-group">
                                            <label class="control-label col-md-2" for="name1">Nome</label>
                                            <div class="col-md-6">
                                              <input type="text" class="form-control" id="name1" value="${usuarioComprador.nome}">
                                            </div>
                                          </div>   
                                          <!-- Email -->
                                          <div class="form-group">
                                            <label class="control-label col-md-2" for="email1">Email</label>
                                            <div class="col-md-6">
                                              <input type="text" class="form-control" id="email1" value="${usuarioComprador.email}">
                                            </div>
                                          </div>
                                          <!-- Telephone -->
                                          <div class="form-group">
                                            <label class="control-label col-md-2" for="telephone">Telefone</label>
                                            <div class="col-md-6">
                                              <input type="text" class="form-control" id="telephone">
                                            </div>
                                          </div>  
                                          <!-- Address -->
                                          <div class="form-group">
                                            <label class="control-label col-md-2" for="address">Endereço</label>
                                            <div class="col-md-6">
                                              <textarea class="form-control" rows="5" id="address"></textarea>
                                            </div>
                                          </div>                           
                                          <!-- Country -->
                                          <div class="form-group">
                                            <label class="control-label col-md-2">Pais</label>
                                            <div class="col-md-3">                               
                                               
                                            </div>
                                          </div>  
                                          <!-- State -->
                                          <div class="form-group">
                                            <label class="control-label col-md-2" for="city">Estado</label>
                                            <div class="col-md-6">
                                              <input type="text" class="form-control" id="state">
                                            </div>
                                          </div>                                               
                                          <!-- City -->
                                          <div class="form-group">
                                            <label class="control-label col-md-2" for="city">Cidade</label>
                                            <div class="col-md-6">
                                              <input type="text" class="form-control" id="city">
                                            </div>
                                          </div>                                                                                                                                         
                                          <!-- Username -->
                                          <div class="form-group">
                                            <label class="control-label col-md-2" for="username2">Usuario</label>
                                            <div class="col-md-6">
                                              <input type="text" class="form-control" id="username2">
                                            </div>
                                          </div>
                                          <!-- Password -->
                                          <div class="form-group">
                                            <label class="control-label col-md-2" for="password2">Senha</label>
                                            <div class="col-md-6">
                                              <input type="password" class="form-control" id="password2">
                                            </div>
                                          </div>
                                          <!-- Checkbox -->
                                          <div class="form-group">
                                             <div class="col-md-6 col-md-offset-2">
                                                <label class="checkbox inline">
                                                   <input type="checkbox" id="inlineCheckbox3" value="agree"> Aceito os termos e condições
                                                </label>
                                             </div>
                                          </div> 
                                          
                                          <!-- Buttons -->
                                          <div class="form-group">
                                             <!-- Buttons -->
											 <div class="col-md-6 col-md-offset-2">
												<button type="submit" class="btn btn-default">Atualizar</button>
												
											 </div>
                                          </div>
                                      </form>
                                    </div>

      </div>                                                                    



    </div>
  </div>
</div>