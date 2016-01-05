package br.com.ohexpress.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ohexpress.dao.MateriaPrimaDAO;
import br.com.ohexpress.model.MateriaPrima;

@Controller
@RequestMapping("/admin/mp")
public class MateriaPrimaController {

	@Autowired
	private MateriaPrimaDAO dao;

	@RequestMapping("/cadastro")
	public String cadastro(ModelMap modelMap) {

		modelMap.addAttribute("materiaPrima", new MateriaPrima());

		return "cadMateriaPrima";
	}

	@Transactional
	@RequestMapping("/salvarMp")
	public String salvar(MateriaPrima materiaPrima ){

		dao.salvar(materiaPrima);

		return "index";
	}

}