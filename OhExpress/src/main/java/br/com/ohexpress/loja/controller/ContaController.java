package br.com.ohexpress.loja.controller;

import java.util.Collections;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.ohexpress.dao.PedidoDAO;
import br.com.ohexpress.model.ItemPedido;
import br.com.ohexpress.model.Pedido;
import br.com.ohexpress.model.Usuario;

@Controller
@RequestMapping("/conta")
public class ContaController {
	
	
	@Autowired
	private PedidoDAO daoPed;

	@RequestMapping(value = "/editconfig")
	public String editConfig(HttpSession session) {

		return "editconfig";
	}

	@RequestMapping(value = "/historicopedido")
	public String HistoricoPedido(ModelMap modelMap, HttpSession session) {
		
		Usuario usuario = (Usuario) session.getAttribute("usuarioComprador");
		
		List<Pedido> pedidos = daoPed.listarPorComprador(usuario.getId());
		
		Collections.sort(pedidos, new Pedido.CompId());
	
		modelMap.addAttribute("pedidos",pedidos);

		return "historicoPedido";
	}

	@RequestMapping(value = "/minhaconta")
	
	public String MinhaConta(ModelMap modelMap,HttpSession session) {
		
		
		Usuario usuarioComprador = (Usuario) session.getAttribute("usuarioComprador");
		
		if (usuarioComprador != null){
		List<Pedido> pedidos = daoPed.listarPorComprador(usuarioComprador.getId());
		
		Collections.sort(pedidos, new Pedido.CompId());
	
		modelMap.addAttribute("pedidos",pedidos);

		return "minhaConta";}
		
		return"home";
	}
	
	
	
	@RequestMapping(value = "/confirmacao", method = RequestMethod.GET, params = { "nPedido" })
	public String ConfirmacaoPedido( HttpSession session, @RequestParam("nPedido") Long nPedido) {

		Pedido pedido = daoPed.buscaId(nPedido);
		
		Usuario usuario = (Usuario) session.getAttribute("usuarioComprador");

		
		
		if (pedido != null && pedido.getUsuario().getId().equals(usuario.getId())  ){
			
	
			session.setAttribute("cPedido", pedido);
			return "shopedidoconfirm";
		}


		return "404";
	}
	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/pedido")
	public String pedido(ModelMap modelMap, HttpSession session) {

		Pedido pedido = new Pedido();

		pedido.setItem((Set<ItemPedido>) session.getAttribute("itensPedido"));
		modelMap.addAttribute("pedido", pedido);

		return "shopedido";
	}
	
	
	@RequestMapping("sair")
	public String logout(HttpSession session) {
	  session.removeAttribute("usuarioComprador");
	  return "redirect:/lojas/login";
	}

	
	
	

}
