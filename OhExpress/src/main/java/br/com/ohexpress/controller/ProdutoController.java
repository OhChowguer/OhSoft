package br.com.ohexpress.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomCollectionEditor;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import br.com.ohexpress.dao.CategoriaDAO;
import br.com.ohexpress.dao.CategoriaProdutoDAO;
import br.com.ohexpress.dao.ItemProdutoDAO;
import br.com.ohexpress.dao.LojaDAO;
import br.com.ohexpress.dao.PedidoDAO;
import br.com.ohexpress.dao.ProdutoDAO;
import br.com.ohexpress.model.Imagem;
import br.com.ohexpress.model.Produto;
import br.com.ohexpress.model.Usuario;
@Controller
@RequestMapping("/admin/produto")
public class ProdutoController {

	@Autowired
	private ProdutoDAO daoProd;
	@Autowired
	private ItemProdutoDAO daoIProd;
	@Autowired
	private PedidoDAO daoPed;
	@Autowired
	private LojaDAO daoLoja;
	@Autowired
	private CategoriaProdutoDAO daoCatProd;
	private static final Logger logger = LoggerFactory
			.getLogger(EstruturasController.class);
	@Autowired
	private HttpServletRequest request;

	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	    SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	    dateFormat.setLenient(false);
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	@InitBinder
	protected void initBinderCat(WebDataBinder binder) {
		binder.registerCustomEditor(Set.class, "categoriaProduto",
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

						return id != null ? daoCatProd.buscaPorId(id) : null;
					}
				});

	}
	
	@InitBinder
	protected void initBinderItemProd(WebDataBinder binder) {
		binder.registerCustomEditor(Set.class, "itemProduto",
				new CustomCollectionEditor(Set.class) {
					@Override
					protected Object convertElement(Object element) {
						Long id = null;

						if (element instanceof String
								&& !((String) element).equals("")) {
							
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

						return id != null ? daoIProd.buscaPorId(id) : null;
					}
				});

	}

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


	@RequestMapping("/lista")
	public String listaDeProduto(ModelMap modelMap) {

		modelMap.addAttribute("produtos", daoProd.listar());

		return "listProduto";
	}
	
	

	@RequestMapping("/cadastro")
	public String cadastro(ModelMap modelMap) {

		modelMap.addAttribute("produto", new Produto());
		modelMap.addAttribute("itensProduto", daoIProd.listar());
		modelMap.addAttribute("categorias", daoCatProd.listar());
		modelMap.addAttribute("lojas", daoLoja.listar());
		modelMap.addAttribute("trans", "cad");

		return "cadProduto";
	}
	
	@RequestMapping("/listaProdApp/{id}")
	@ResponseBody
	public List<Produto>listaDeProdutoJson(@PathVariable Long id ) {

		//Long id = 1L;
		List<Produto> prodList = new ArrayList<Produto>();		
		prodList = daoProd.listarPorLoja(id);		
		System.out.println(prodList);

		return prodList;
	}

	@RequestMapping("/cadastrar")
	public String cadastrar(Produto produto, BindingResult result,@RequestParam("imgCadProd") MultipartFile file,@RequestParam("listImgProd") MultipartFile[] files) throws IOException {
		
		Date d = new Date();  
		produto.setDataCadastro(d);
		produto.setImgProduto(CriaImg(file));
		daoProd.salvar(produto);
		return "index";
	}
	
	//Carrega o produto para ser editado, recebe o id do produto
	@Transactional
	@RequestMapping(value="/editar/{id}", method = RequestMethod.GET)
	public String EditarProduto(ModelMap modelMap, @PathVariable Long id ) {

	
		modelMap.addAttribute("itensProduto", daoIProd.listar());
		modelMap.addAttribute("categorias", daoCatProd.listar());
		modelMap.addAttribute("lojas", daoLoja.listar());
		modelMap.addAttribute("produto", daoProd.buscaId(id));
		modelMap.addAttribute("trans", "edit");
		//modelMap.addAttribute("categorias", daoCat.listar());
		
		 return "cadProduto";

	}
	
	//Edita loja, recebe o id da loja a ser editada 
	@RequestMapping(value="/update/{id}", method = RequestMethod.POST)
	public String UpdateProduto(Produto produto, @PathVariable Long id ,HttpServletRequest request,@RequestParam("imgCadProd") MultipartFile file ) throws IOException {

		produto.setId(id);
		produto.setImgProduto(CriaImg(file));
		daoProd.update(produto);
		
		return "redirect:/admin/produto/lista";

	}
	
	//Troca o status do produto
	@RequestMapping("/chancestatus/{id}")
	@ResponseBody
	public String ChangeStatus(@PathVariable Long id) {

		Produto produto = daoProd.buscaId(id);
		if (produto.isStatus()){			
			produto.setStatus(false);			
		}			
		else{			
			produto.setStatus(true);			
		}					
		daoProd.update(produto);
		
		return "ok";
	}
	public String saveImg(MultipartFile file, Produto produto, Usuario usuario) {

		String endImg = produto.getId() + file.getOriginalFilename();
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = "/Users/rafaelchowman/Documents/workspace/OhExpress/src/main/webapp/resources/imagens/produtos/"
						+ usuario.getLogin();
				File dir = new File(rootPath);
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + endImg);
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				logger.info("Server File Location="
						+ serverFile.getAbsolutePath());

				return "imagens/produtos/" + usuario.getLogin() + "/" + endImg;
			} catch (Exception e) {
				return endImg;
			}
		} else {
			return endImg;
		}
	}

	public List<String> saveImgMulti(MultipartFile[] files, Produto produto,
			Usuario usuario) {

		ArrayList<String> listEndProd = new ArrayList<String>();

		String fileName = null;
		String rootPath = "/Users/rafaelchowman/Documents/workspace/OhExpress/src/main/webapp/resources/imagens/produtos/"+usuario.getLogin();
		if (files != null && files.length > 0) {
			for (int i = 0; i < files.length; i++) {
				try {
					fileName = files[i].getOriginalFilename();
					byte[] bytes = files[i].getBytes();
					File dir = new File(rootPath);
					if (!dir.exists())
						dir.mkdirs();
					File serverFile = new File(dir.getAbsolutePath()
							+ File.separator + fileName);
					BufferedOutputStream stream = new BufferedOutputStream(
							new FileOutputStream(serverFile));
					stream.write(bytes);
					stream.close();
					
					logger.info("Server File Location="
							+ serverFile.getAbsolutePath());
					listEndProd.add("imagens/produtos/" + usuario.getLogin()
							+ "/" + fileName);

				} catch (Exception e) {
					logger.info("ERRROO"+e.getMessage());
					return listEndProd;
				}
			}
			return listEndProd;
		} else {
			logger.info("LISTA VAZIA");
			return listEndProd;
			
		}
	}
	
	private Imagem CriaImg(MultipartFile file) throws IOException {
		Imagem imagem= new Imagem();		
		imagem.setFileName(file.getOriginalFilename());
		imagem.setData(file.getBytes());
		return imagem;
	}

}
