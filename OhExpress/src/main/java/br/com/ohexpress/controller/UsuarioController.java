package br.com.ohexpress.controller;






import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.ohexpress.dao.UsuarioDAO;
import br.com.ohexpress.model.Usuario;

@Controller
@RequestMapping("/admin/usuario")
public class UsuarioController {
	
	@Autowired
	private UsuarioDAO dao;
	
	@RequestMapping("/cadastro")
	public String formCadastrar(ModelMap modelMap) {

		modelMap.addAttribute("usuario", new Usuario());

		return "cadUsuario";

	}
	
	@RequestMapping("/listartodos")
	public String listartodos(ModelMap modelMap) {

		modelMap.addAttribute("usuarios", dao.listar());

		return "userlista";

	}
	
	//Retorna a quantidade de usuarios cadastrados
	@RequestMapping("/countUsuarios")
	@ResponseBody
	public Long QuantidadeUsuario() {
			

		return dao.count();

	}
	@RequestMapping("/resumo")
	public String index(ModelMap modelMap) {

		modelMap.addAttribute("ucount", dao.countUsuario());

		return "index";

	}

	@RequestMapping("")
	public String login(ModelMap modelMap) {

		modelMap.addAttribute("usuario", new Usuario());

		return "login";

	}
	@Transactional
	@RequestMapping("/criar")
	public String Cadastrar(Usuario usuario) {

		dao.salvar(usuario);
		
		return "redirect:listartodos";

	}
	
	
	
	@RequestMapping(value = "/existe", method = RequestMethod.POST)
	@ResponseBody
	public String logar(Usuario usuario) {
		
		
	
		Usuario usuarioLogado = dao.autenticar(usuario);
		
		if (usuarioLogado != null){
			
		    return "existe";
		  }
		  return "nexiste";
		}
}

