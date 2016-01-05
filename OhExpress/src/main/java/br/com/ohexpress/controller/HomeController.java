package br.com.ohexpress.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.ohexpress.dao.ImagemDAO;
import br.com.ohexpress.dao.LojaDAO;
import br.com.ohexpress.dao.UsuarioDAO;
import br.com.ohexpress.model.Imagem;
import br.com.ohexpress.model.Usuario;

@Controller
public class HomeController {

	@Autowired
	private UsuarioDAO daoUsu;
	
	@Autowired
	private LojaDAO daoLoja;
	
	@Autowired
	ImagemDAO imgDao;
	@Autowired
	private UsuarioDAO usuDao;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(ModelMap modelMap) {

		modelMap.addAttribute("usuario", new Usuario());

		return "home";
	}

	@RequestMapping(value = "/registro", method = RequestMethod.GET)
	public String registro(ModelMap modelMap) {

		modelMap.addAttribute("usuario", new Usuario());

		return "registrofront";
	}

	@RequestMapping(value = "/registrar", method = RequestMethod.POST)
	public String registrar(Usuario usuario) {

		daoUsu.salvar(usuario);

		return "redirect:login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(ModelMap modelMap) {

		modelMap.addAttribute("usuario", new Usuario());

		return "loginfront";
	}
	
	@RequestMapping(value = "/pesqloja", method = RequestMethod.GET)
	public String PesquisaLojas(ModelMap modelMap) {

		modelMap.addAttribute("lojas", daoLoja.listarAtivos());

		return "lojasfront";
	}
	
	
	
	
	@RequestMapping(value = "/logincliente", method = RequestMethod.POST)
	public String loginCliente(HttpSession session,@RequestParam("login") String login, @RequestParam("senha") String senha ) {

		Usuario user = new Usuario();
		user.setLogin(login);
		user.setSenha(senha);
		Usuario usuarioComprador = usuDao.autenticarComprador(user,1);
		
		if (usuarioComprador != null){
			
			session.setAttribute("usuarioComprador", usuarioComprador);
			
		    return "redirect:conta/minhaconta";
		  }
		  return "redirect:/lojas/login";
		}

	
	

	
	@RequestMapping(value = "/imageDisplay", method = RequestMethod.GET)
	  public void showImage(@RequestParam("id") Long itemId, HttpServletResponse response,HttpServletRequest request) 
	          throws ServletException, IOException{


	    Imagem imagem = imgDao.buscaPorId(itemId);       
	    response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
	    response.getOutputStream().write(imagem.getData());
	    response.getOutputStream().close();
	    
	    return;
	}

}
