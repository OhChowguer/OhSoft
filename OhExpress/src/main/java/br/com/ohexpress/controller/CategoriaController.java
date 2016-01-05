package br.com.ohexpress.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import br.com.ohexpress.dao.CategoriaDAO;
import br.com.ohexpress.model.Categoria;
import br.com.ohexpress.model.Usuario;

@Controller
@RequestMapping("/admin/categorias")
public class CategoriaController {

	private static final Logger logger = LoggerFactory
			.getLogger(EstruturasController.class);

	@Autowired
	private CategoriaDAO daoCat;
	@Autowired
	private HttpServletRequest request;

	@RequestMapping("/cadastro")
	public String cadastro(ModelMap modelMap) {

		// modelMap.addAttribute("materiaPrima", new MateriaPrima());
		modelMap.addAttribute("categoria", new Categoria());
		// modelMap.addAttribute("upImg", new UploadFile());
		modelMap.addAttribute("trans", "cad");
		return "cadEstrutura";
	}

	// Lista todas as categorias
	@RequestMapping("/lista")
	public String Listar(ModelMap modelMap) {

		modelMap.addAttribute("categorias", daoCat.listar());

		return "listCategoria";
	}

	// Carrega a categoria para ser editado, recebe o id da categoria
	@Transactional
	@RequestMapping(value = "/editar/{id}", method = RequestMethod.GET)
	public String EditarCategoria(ModelMap modelMap, @PathVariable Long id) {

		modelMap.addAttribute("categoria", daoCat.buscaPorId(id));
		modelMap.addAttribute("trans", "edit");

		return "cadEstrutura";

	}

	// Edita categoria, recebe o id da categoria ser editada
	@RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
	public String UpdateCategoria(Categoria categoria, @PathVariable Long id,
			HttpServletRequest request) {

		categoria.setId(id);
		daoCat.update(categoria);

		return "redirect:/admin/categorias/lista";

	}

	// Exclui uma categoria
	@RequestMapping("/exluir")
	public String Excluir(ModelMap modelMap) {

		modelMap.addAttribute("categorias", daoCat.listar());

		return "listCategoria";
	}

	// Busca uma categoria, recebe um ID
	@RequestMapping("/buscaId")
	public String BuscaId(ModelMap modelMap) {

		modelMap.addAttribute("categorias", daoCat.listar());

		return "listCategoria";
	}

	// Conta as categorias cadastrada
	@RequestMapping("/countaCategoria")
	public String CountaCategoria(ModelMap modelMap) {

		modelMap.addAttribute("categorias", daoCat.listar());

		return "listCategoria";
	}

	// Busca categoria por Loja, recebe um ID
	@RequestMapping("/buscaPorLoja")
	public String BuscaPorLoja(ModelMap modelMap) {

		modelMap.addAttribute("categorias", daoCat.listar());

		return "listCategoria";
	}

	// Busca categoria por Produto, recebe um ID
	@RequestMapping("/buscaPorProduto")
	public String BuscaPorProduto(ModelMap modelMap) {

		modelMap.addAttribute("categorias", daoCat.listar());

		return "listCategoria";
	}

	// Inserir a categoria
	@Transactional
	@RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
	public String cadCategoria(Categoria categoria,
			@RequestParam("imgCat") MultipartFile file) {

		Usuario usuario = (Usuario) request.getSession().getAttribute(
				"usuarioLogado");
		if (!file.isEmpty()) {

			categoria.setEndImg(true);
		}
		daoCat.salvar(categoria);
		saveImg(file, usuario, categoria);

		// inserir aviso se nao salvar imagem
		return "index";
	}

	// Salva Imagem da categoria
	public boolean saveImg(MultipartFile file, Usuario usuario,
			Categoria categoria) {

		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = "/Users/rafaelchowman/Documents/workspace/OhExpress/src/main/webapp/resources/imagens/"
						+ usuario.getId() + "/categorias";
				File dir = new File(rootPath);
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
				// + File.separator + name + ".jpg"); aqui tem que ser mudado
						+ File.separator + categoria.getId() + ".jpg");
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				logger.info("Server File Location="
						+ serverFile.getAbsolutePath());

				return true;
			} catch (Exception e) {
				return false;
			}
		} else {
			return false;
		}
	}

}