package br.com.ohexpress.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.ohexpress.model.MateriaPrima;
@Repository
public class MateriaPrimaDaoImp implements MateriaPrimaDAO{
	
	
	@Autowired
	private SessionFactory sessao;

	
	@Override
	@Transactional
	public void salvar(MateriaPrima materiaPrima) {
		
		sessao.getCurrentSession().merge(materiaPrima);
		
		
	}

}
