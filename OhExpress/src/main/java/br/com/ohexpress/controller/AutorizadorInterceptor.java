package br.com.ohexpress.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import br.com.ohexpress.model.Usuario;

public class AutorizadorInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object controller) throws Exception {

		String uri = request.getRequestURI();
		
		
		Usuario usuario = (Usuario) request.getSession().getAttribute(
				"usuarioLogado");
		
		
		Usuario usuarioComprador = (Usuario) request.getSession().getAttribute(
				"usuarioComprador");

		if (uri.contains("/conta/") && usuarioComprador == null) {
			
			System.out.println("entro");

			response.sendRedirect("/ohexpress/lojas/login");
			return true;
			
			
		} else if (uri.contains("/conta/")
				&& usuarioComprador != null) {

			return true;

		}
				
		else if (uri.endsWith("/admin") || uri.endsWith("/log")
				|| uri.endsWith("/admin/lojas/listDist")
				|| uri.endsWith("/produto/listaProdApp/1")
				|| uri.endsWith("/admin/lojas/json")
				|| uri.contains("resources") || uri.endsWith("/registro")
				|| uri.endsWith("/registrar") || uri.endsWith("/login")
				|| uri.endsWith("/logincliente")
				|| uri.endsWith("/pesqloja")
				|| uri.endsWith("/ohexpress/") || uri.contains("lojas") || uri.contains("/imageDisplay")) {

			return true;
		} else if (uri.contains("/admin/")
				&& (usuario == null || usuario.getTipo() < 2)) {

			response.sendRedirect("/ohexpress/admin");
			return true;

		}

		if (request.getSession().getAttribute("usuarioLogado") != null) {

			return true;
		}

		response.sendRedirect("/ohexpress/login");
		return true;

	}
}
