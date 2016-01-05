<%@page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Page content starts -->
<c:url var="url" value="/lojas" />
<div class="content resume">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="bor"></div>
				<!-- Resume -->
				<div class="clearfix"></div>
				<c:forEach items="${lojas}" var="loja">
					<!-- About -->
					<div class="rblock">
						<div class="row">
							<div class="col-md-2">
								
									<a href="${url}?store=${loja.id}"><img
										src="${loja.imgLoja}"
										alt="" class="img-responsive" /></a>
								
							</div>
							<div class="col-md-8">
								<div class="rinfo">
									<!-- Name -->
									<h5><a href="${url}?store=${loja.id}">${loja.nome}</a></h5>
									<!-- Job -->
									<div class="rmeta">${loja.descricao}</div>
									<p>
										${loja.endereco.logradouro} - ${loja.endereco.bairro} - ${loja.endereco.estado}
									</p>
									<!-- Social media icons -->
									<div class="social">
										<a href="#"><i class="fa fa-facebook facebook"></i></a> <a
											href="#"><i class="fa fa-twitter twitter"></i></a> <a
											href="#"><i class="fa fa-linkedin linkedin"></i></a> <a
											href="#"><i class="fa fa-google-plus google-plus"></i></a> <a
											href="#"><i class="fa fa-pinterest pinterest"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>