package br.com.ohexpress.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.ohexpress.dao.PedidoDAO;
import br.com.ohexpress.dao.UsuarioDAO;
import br.com.ohexpress.model.Usuario;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private UsuarioDAO dao;
	@Autowired
	private PedidoDAO daoPed;
	
	@RequestMapping("sair")
	public String logout(HttpSession session) {
	  session.invalidate();
	  return "redirect:";
	}

	
	
	
	
	@RequestMapping("/resumo")
	public String index(ModelMap modelMap) {

		modelMap.addAttribute("ucount", dao.countUsuario());
		modelMap.addAttribute("pedido", daoPed.listar());

		return "index";

	}

	@RequestMapping("")
	public String login(ModelMap modelMap,HttpSession session) {
		
		if(session.getAttribute("usuarioLogado") != null){
			
			
			return "redirect:admin/resumo";
		}
		
		
		modelMap.addAttribute("usuario", new Usuario());

		return "login";
		
	}
	
	@RequestMapping(value = "/log", method = RequestMethod.POST)
	public String logar(Usuario usuario, HttpSession session) {
		
		Usuario usuarioLogado = dao.autenticar(usuario);
		
		if (usuarioLogado != null){
			
			session.setAttribute("usuarioLogado", usuarioLogado);
			
		    return "redirect:resumo";
		  }
		  return "redirect:";
		}


	}


