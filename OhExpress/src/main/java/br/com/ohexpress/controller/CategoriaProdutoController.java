package br.com.ohexpress.controller;



import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomCollectionEditor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import br.com.ohexpress.dao.CategoriaProdutoDAO;
import br.com.ohexpress.dao.LojaDAO;
import br.com.ohexpress.model.CategoriaProduto;

@Controller
@RequestMapping("/admin/categoriasproduto")
public class CategoriaProdutoController {



	@Autowired
	private CategoriaProdutoDAO daoCatProd;
	@Autowired
	private LojaDAO daoLoja;
	@Autowired
	private HttpServletRequest request;
	
	
	@InitBinder
	protected void initBinderLoja(WebDataBinder binder) {
		binder.registerCustomEditor(Set.class, "loja",
				new CustomCollectionEditor(Set.class) {
					@Override
					protected Object convertElement(Object element) {
						Long id = null;

						if (element instanceof String
								&& !((String) element).equals("")) {
							// From the JSP 'element' will be a String
							try {
								id = Long.parseLong((String) element);
							} catch (NumberFormatException e) {
								System.out.println("Element was "
										+ ((String) element));
								e.printStackTrace();
							}
						} else if (element instanceof Long) {
							// From the database 'element' will be a Long
							id = (Long) element;
						}

						return id != null ? daoLoja.buscaPorId(id) : null;
					}
				});
	}

	@RequestMapping("/cadastro")
	public String cadastro(ModelMap modelMap) {

		modelMap.addAttribute("categoriaProduto", new CategoriaProduto());
		modelMap.addAttribute("lojas", daoLoja.listar());	
		modelMap.addAttribute("trans", "cad");
		
		return "cadCategoriaProduto";
	}

	// Lista todas as categorias
	@RequestMapping("/lista")
	public String Listar(ModelMap modelMap) {

		modelMap.addAttribute("categoriasProduto", daoCatProd.listar());

		return "listCategoriaProduto";
	}

	// Carrega a categoria para ser editado, recebe o id da categoria
	@Transactional
	@RequestMapping(value = "/editar/{id}", method = RequestMethod.GET)
	public String EditarCategoria(ModelMap modelMap, @PathVariable Long id) {
		
		
		modelMap.addAttribute("categoriaProduto", daoCatProd.buscaPorId(id));
		modelMap.addAttribute("trans", "edit");
		modelMap.addAttribute("lojas", daoLoja.listar());
		
		return "cadCategoriaProduto";

	}

	// Edita categoria, recebe o id da categoria ser editada
	@RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
	public String UpdateCategoria(CategoriaProduto categoriaProduto, @PathVariable Long id,
			HttpServletRequest request) {

		categoriaProduto.setId(id);
		daoCatProd.update(categoriaProduto);

		return "redirect:/admin/categoriasproduto/lista";

	}

	// Exclui uma categoria
	@RequestMapping("/exluir")
	public String Excluir(ModelMap modelMap) {

		modelMap.addAttribute("categorias", daoCatProd.listar());

		return "listCategoriaProduto";
	}

	// Busca uma categoria, recebe um ID
	@RequestMapping("/buscaId")
	public String BuscaId(ModelMap modelMap) {

		modelMap.addAttribute("categoriasProduto", daoCatProd.listar());

		return "listCategoriaProduto";
	}

	// Conta as categorias cadastrada
	@RequestMapping("/countacategoria")
	public String CountaCategoria(ModelMap modelMap) {

		modelMap.addAttribute("categoriasProduto", daoCatProd.listar());

		return "listCategoriaProduto";
	}

	// Busca categoria por Loja, recebe um ID
	@RequestMapping("/buscaPorLoja")
	public String BuscaPorLoja(ModelMap modelMap) {

		modelMap.addAttribute("categorias", daoCatProd.listar());

		return "listCategoriaProduto";
	}

	// Busca categoria por Produto, recebe um ID
	@RequestMapping("/buscaPorProduto")
	public String BuscaPorProduto(ModelMap modelMap) {

		modelMap.addAttribute("categorias", daoCatProd.listar());

		return "listCategoriaProduto";
	}

	// Inserir a categoria
	@Transactional
	@RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
	public String cadCategoria(CategoriaProduto categoriaProduto,
			@RequestParam("imgCat") MultipartFile file) {


		if (!file.isEmpty()) {

			categoriaProduto.setEndImg(true);
		}
		daoCatProd.salvar(categoriaProduto);

		return "index";
	}

	
}