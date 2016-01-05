package br.com.ohexpress.controller;


import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import br.com.ohexpress.dao.CategoriaDAO;
import br.com.ohexpress.dao.MateriaPrimaDAO;
import br.com.ohexpress.model.Categoria;
import br.com.ohexpress.model.MateriaPrima;

@Controller
@RequestMapping("/admin/estruturas")
public class EstruturasController {



	@Autowired
	private MateriaPrimaDAO daoMp;
	@Autowired
	private CategoriaDAO daoCat;
	@Autowired
	private HttpServletRequest request;
	@RequestMapping("/cadastro")
	public String cadastro(ModelMap modelMap) {

		// modelMap.addAttribute("materiaPrima", new MateriaPrima());
		modelMap.addAttribute("categoria", new Categoria());
		// modelMap.addAttribute("upImg", new UploadFile());

		return "cadEstrutura";
	}

	@Transactional
	@RequestMapping("/salvarEstruturas")
	public String salvar(MateriaPrima materiaPrima) {

		daoMp.salvar(materiaPrima);

		return "index";
	}

	
}