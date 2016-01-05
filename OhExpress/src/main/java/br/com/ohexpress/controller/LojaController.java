package br.com.ohexpress.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import br.com.ohexpress.dao.CategoriaDAO;
import br.com.ohexpress.dao.EnderecoDAO;
import br.com.ohexpress.dao.LojaDAO;
import br.com.ohexpress.dao.ProdutoDAO;
import br.com.ohexpress.model.Distancia;
import br.com.ohexpress.model.DistanciaApi;
import br.com.ohexpress.model.Imagem;
import br.com.ohexpress.model.Loja;
import br.com.ohexpress.util.AWSUtil;


@Controller
@RequestMapping("/admin/loja")
public class LojaController {

	@Autowired
	CategoriaDAO daoCat;
	@Autowired
	LojaDAO daoLoja;
	@Autowired
	EnderecoDAO daoEnd;
	@Autowired
	ProdutoDAO daoProd;	
	
	@Autowired
	HttpServletRequest request;
	
	//private static final Logger logger = LoggerFactory
	//		.getLogger(EstruturasController.class);
	//Contru��o de lista de categorias
	@InitBinder
	protected void initBinderCat(WebDataBinder binder) {
		binder.registerCustomEditor(Set.class, "categoria",
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

						return id != null ? daoCat.buscaPorId(id) : null;
					}
				});

	}
	//Prepara o cadastro de loja
	@RequestMapping("/cadastro")
	public String formCadastrar(ModelMap modelMap) {

		modelMap.addAttribute("loja", new Loja());
		modelMap.addAttribute("categorias", daoCat.listar());
		modelMap.addAttribute("trans", "cad");

		return "cadLoja";

	}
	//Retorna quantidade de lojas cadastradas
	@RequestMapping("/countLojas")
	@ResponseBody
	public Long QuantidadeLoja() {
			

		return daoLoja.count();

	}

	//Troca o status da loja
	@RequestMapping("/chancestatus/{id}")
	@ResponseBody
	public String ChangeStatus(@PathVariable Long id) {

		Loja loj = daoLoja.buscaPorId(id);
		if (loj.isStatus()){			
			loj.setStatus(false);			
		}			
		else{			
			loj.setStatus(true);			
		}					
		daoLoja.update(loj);
		
		return "ok";
	}
	

	//Cadastra a loja
	
	@RequestMapping("/cadastrar")
	public String Cadastrar(Loja loja, @RequestParam("imgTopLoja") MultipartFile file, HttpServletRequest request) throws IOException, IllegalStateException, NoSuchAlgorithmException {

		AWSUtil asw = new AWSUtil();
		daoEnd.salvar(loja.getEndereco());	
        loja.setImgLoja(asw.s3Upload("ohexpress","lojas", file));
        daoLoja.salvar(loja);
		return "redirect:lista";

	}
	

	
	//Fun��o de teste 
	@RequestMapping("/loja")
	public String loja(ModelMap modelMap) {

		modelMap.addAttribute("produtos",daoProd.listar());
		//modelMap.addAttribute("endereco", new Endereco());
		//modelMap.addAttribute("categorfias", daoCat.listar());

		return "loja";

	}
	
	//Lista todas a lojas	
	@RequestMapping("/lista")
	public String listaDeLoja(ModelMap modelMap) {

		modelMap.addAttribute("lojas", daoLoja.listar());
	

		return "listLoja";

	}
	
	//Lista lojas por usuario administrador
	@RequestMapping("/listaLoja")
	public String listaDeLojaPorAdmin(ModelMap modelMap) {

		modelMap.addAttribute("lojas", daoLoja.listar());
	

		return "listLoja";

	}
	
	//Carrega a loja para ser editada, recebe o id a loja
	@Transactional
	@RequestMapping(value="/editar/{id}", method = RequestMethod.GET)
	public String EditarLoja(ModelMap modelMap, @PathVariable Long id ) {

	
		
		modelMap.addAttribute("loja", daoLoja.buscaPorId(id));
		modelMap.addAttribute("trans", "edit");
		modelMap.addAttribute("categorias", daoCat.listar());
		
		return "cadLoja";

	}
	
	//Edita loja, recebe o id da loja a ser editada 
	@RequestMapping(value="/update/{id}", method = RequestMethod.POST)
	public String UpdateLoja(Loja loja, @RequestParam("imgTopLoja") MultipartFile file, @PathVariable Long id ,HttpServletRequest request ) throws IOException, IllegalStateException, NoSuchAlgorithmException {

		
		AWSUtil asw = new AWSUtil();        
		loja.setId(id);
		loja.setStatus(daoLoja.buscaPorId(id).isStatus());
		loja.getEndereco().setId(daoLoja.buscaPorId(id).getEndereco().getId());
		if (!file.isEmpty()){
			loja.setImgLoja(asw.s3Upload("ohexpress","lojas", file));	
		}
		daoLoja.update(loja);
			
		return "redirect:/admin/loja/lista";

	}
	
	//Deleta loja, recebe o id da loja a ser deletada
	@RequestMapping(value ="/deleta/{id}", method = RequestMethod.POST)
	@ResponseBody
	public String deletaLoja(ModelMap modelMap, @PathVariable Long id ){

		daoLoja.deleteLoja(id);
				
		    return "ok";
		  }
	//Retorna todos com Json
	@RequestMapping("/listAllJson")
	@ResponseBody
	public List<Loja> listaDeLojaJson() {
	
		return daoLoja.listar();

	}
	
	//Retorna lojas mais proximas, usando API do Google e distacia informada
	@Transactional
	@RequestMapping(value="/listdist",method = RequestMethod.GET)
	@ResponseBody	
	public List<Distancia> listaLojaPorDistancia() {
		
		String locCliente = "-25.40452504,-49.18652594";
		String locLojas = "";
		
		
		List<Distancia> listLojasPorDist = new ArrayList<Distancia>();	
		List<Loja> listLojas = daoLoja.listarAtivos();
		
		for (Loja i : listLojas){

				locLojas = locLojas+i.getEndereco().getLatitude()+",";
				locLojas = locLojas+i.getEndereco().getLongitude()+"|";

			
		}
		System.out.println(listLojas); 
		String uri = "https://maps.googleapis.com/maps/api/distancematrix/json?origins="+locCliente+"&destinations="+locLojas+"&sensor=false&key=AIzaSyDzfLGQnPke7eQI7YSJ8P1wBuubeEgUrsU";
		System.out.println(uri); 
	    RestTemplate restTemplate = new RestTemplate();
	    
	    DistanciaApi result = restTemplate.getForObject(uri, DistanciaApi.class);
	    
	    System.out.println(result.toString());
		
		
		for (int i = 0; i < listLojas.size(); i++){
			
			Distancia loj = new Distancia();
			
			loj.setLoja((Loja) listLojas.get(i));
			
			
			if (result.getRows().get(0).getElements().get(i).getStatus() != "ZERO_RESULTS")
			{
				loj.setDistText(result.getRows().get(0).getElements().get(i).getDistance().getText());
				loj.setDistNumber(result.getRows().get(0).getElements().get(i).getDistance().getValue());
			}			
			else{
				loj.setDistText("falha");
				loj.setDistNumber(10000);
			}
			
			listLojasPorDist.add(loj);
			
			
			Collections.sort(listLojasPorDist,new Distancia.CompId());
		}

		
		System.out.println(listLojasPorDist.toString());
		return listLojasPorDist;

	}
	
 

}
