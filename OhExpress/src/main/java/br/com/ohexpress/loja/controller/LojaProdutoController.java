package br.com.ohexpress.loja.controller;



import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.ohexpress.dao.CategoriaDAO;
import br.com.ohexpress.dao.LojaDAO;
import br.com.ohexpress.dao.PedidoDAO;
import br.com.ohexpress.dao.ProdutoDAO;
import br.com.ohexpress.dao.UsuarioDAO;
import br.com.ohexpress.model.ItemPedido;
import br.com.ohexpress.model.Loja;
import br.com.ohexpress.model.Pedido;
import br.com.ohexpress.model.Produto;
import br.com.ohexpress.model.Usuario;



@Controller
@RequestMapping("/lojas")
public class LojaProdutoController {

	@Autowired
	private ProdutoDAO daoProd;
	
	@Autowired
	private UsuarioDAO daoUsu;
	@Autowired
	private PedidoDAO daoPed;

	@Autowired
	private LojaDAO daoLoja;
	@Autowired
	private CategoriaDAO daoCat;
	@Autowired
	private HttpServletRequest request;

	@RequestMapping(value = "", method = RequestMethod.GET, params = "store")
	public String getLoja(ModelMap modelMap,
			@RequestParam("store") Long lojaId, HttpSession session) {

		if (carregaLoja(lojaId, session)) {

			return "loja";
		} else
			return "404";
	}
	
	@RequestMapping(value = "/listporcat", method = RequestMethod.GET, params = {"store","cat"})
	public String getLojaPorCategoria(ModelMap modelMap,
			@RequestParam("store") Long lojaId, @RequestParam("cat") Long catId, HttpSession session) {

		if (carregaLoja(lojaId, session)) {
			
			modelMap.addAttribute("produtosPorCategoria", daoProd.listarPorCategoria(catId));

			return "lojaporcat";
		} else
			return "404";
		
	}


	@RequestMapping(value = "/produto", method = RequestMethod.GET, params = {
			"prod", "store" })
	public String getProduto(ModelMap modelMap,
			@RequestParam("prod") Long prodId,
			@RequestParam("store") Long lojaId, HttpSession session) {

		if (carregaLoja(lojaId, session)) {

			Produto produto = daoProd.buscaId(prodId);
			if (produto != null) {
				modelMap.addAttribute("produto", produto);
				return "shoproduto";
			} else {

				return "404";
			}
		}
		return "404";
	}
	
	
	@RequestMapping(value = "/login")
	public String login(HttpSession session) {
		

		Usuario usuarioComprador = (Usuario) session.getAttribute("usuarioComprador");
		
		if( usuarioComprador != null){
			
			
			return "redirect:/conta/minhaconta";
		}
		

		return "shoplogin";
	}
	
	
	
	
	@RequestMapping(value = "/registro")
	public String registro(HttpSession session, ModelMap modelMap) {
		
		modelMap.addAttribute("usuario", new Usuario());

	
		return "shopregistro";
	}

	
	@RequestMapping(value = "/registrar", method = RequestMethod.POST)
	public String registrar(Usuario usuario,HttpSession session) {
		
		usuario.setTipo(1);

		daoUsu.salvar(usuario);
		
		session.setAttribute("usuarioComprador", usuario);
		

		return "redirect:/conta/minhaconta";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/addpedido", method = RequestMethod.GET, params = { "pagForm" })
	public String AddPedido(Pedido pedido, HttpSession session,
			@RequestParam("pagForm") int pagForm) {
		
	
		
		if (session.getAttribute("itensPedido") != null) {
			
			Loja loja = (Loja) session.getAttribute("loja");

			Usuario usuario = (Usuario) session.getAttribute("usuarioComprador");
			pedido.setLoja(loja);
			pedido.setUsuario(usuario);
			pedido.setStatus(1);
			pedido.setItem((Set<ItemPedido>) session
					.getAttribute("itensPedido"));
			session.removeAttribute("itensPedido");			
			daoPed.salvar(pedido);
			return "redirect:/conta/confirmacao?nPedido="+pedido.getId();	
		}
		return "404";
		
	}
	@RequestMapping(value = "/addprod/{prodId}", method = RequestMethod.GET, params = { "qtdprod" })
	@ResponseBody
	public String addItemPedido(HttpSession session,
			@RequestParam("qtdprod") int qtd, @PathVariable Long prodId) {

		if (session.getAttribute("itensPedido") == null) {

			session.setAttribute("itensPedido", new HashSet<ItemPedido>());
		}

		ItemPedido item = new ItemPedido();
		item.setProduto(daoProd.buscaId(prodId));
		item.setQuantidade(qtd);
		@SuppressWarnings("unchecked")
		Set<ItemPedido> list = (Set<ItemPedido>) session
				.getAttribute("itensPedido");
		list.add(item);

		return "Criado carrinho e adicionado";

	}
	
	
	@RequestMapping(value = "/addprod/{prodId}", method = RequestMethod.POST, params = { "qtdprod" })
	public String addItemPedidoPost(HttpSession session,
			@RequestParam("qtdprod") int qtd, @PathVariable Long prodId) {
		
		Loja loja = (Loja) session.getAttribute("loja");
		
		

		if (session.getAttribute("itensPedido") == null) {

			session.setAttribute("itensPedido", new HashSet<ItemPedido>());
		}

		ItemPedido item = new ItemPedido();
		item.setProduto(daoProd.buscaId(prodId));
		item.setQuantidade(qtd);
		@SuppressWarnings("unchecked")
		Set<ItemPedido> list = (Set<ItemPedido>) session
				.getAttribute("itensPedido");
		list.add(item);
		return "redirect:/lojas?store="+loja.getId();

	}

	private boolean carregaLoja(Long lojaId, HttpSession session) {

		Loja loja = (Loja) session.getAttribute("loja");

		if (loja == null) {
			session.setAttribute("loja", daoLoja.buscaPorId(lojaId));
		} else if (lojaId != loja.getId()) {
			session.setAttribute("loja", daoLoja.buscaPorId(lojaId));
			session.removeAttribute("itensPedido");
		}

		if (session.getAttribute("loja") == null) {
			return false;
		} else {
			return true;
		}

	}

}
