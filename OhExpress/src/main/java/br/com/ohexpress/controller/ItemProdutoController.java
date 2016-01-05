package br.com.ohexpress.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import br.com.ohexpress.dao.ItemProdutoDAO;
import br.com.ohexpress.model.ItemProduto;

@Controller
@RequestMapping("/admin/itemproduto")
public class ItemProdutoController {

	@Autowired
	private ItemProdutoDAO daoIProd;

	// Inciar o cadastro de um novo item de produto
	@RequestMapping("/cadastro")
	public String cadastro(ModelMap modelMap) {

		modelMap.addAttribute("itemProduto", new ItemProduto());
		modelMap.addAttribute("trans", "cad");

		return "cadItemProd";
	}

	// Inserir a Item de Produto
	@Transactional
	@RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
	public String cadCategoria(ItemProduto itemProduto) {

		daoIProd.salvar(itemProduto);

		// inserir aviso se nao salvar imagem
		return "index";
	}

	// Carrega o produto para ser editado, recebe o id do produto
	@Transactional
	@RequestMapping(value = "/editar/{id}", method = RequestMethod.GET)
	public String EditarProduto(ModelMap modelMap, @PathVariable Long id) {

		modelMap.addAttribute("itemProduto", daoIProd.buscaPorId(id));
		modelMap.addAttribute("trans", "edit");
		// modelMap.addAttribute("categorias", daoCat.listar());

		return "cadItemProd";

	}

	// Edita loja, recebe o id da loja a ser editada
	@RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
	public String UpdateItemProduto(ItemProduto itemProduto, @PathVariable Long id,
			HttpServletRequest request) {

		itemProduto.setId(id);
		daoIProd.update(itemProduto);

		return "redirect:/admin/itemproduto/lista";

	}

	// Lista todas od Itens de Produto
	@RequestMapping("/lista")
	public String Listar(ModelMap modelMap) {

		modelMap.addAttribute("itensProduto", daoIProd.listar());

		return "listItemProd";
	}

}
