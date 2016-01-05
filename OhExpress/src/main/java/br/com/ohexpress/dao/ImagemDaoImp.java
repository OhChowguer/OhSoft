package br.com.ohexpress.dao;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.ohexpress.model.Imagem;



@Repository
public class ImagemDaoImp implements ImagemDAO{

	@Autowired
	private SessionFactory sessao;
	
	@Override
	@Transactional
	public void save(Imagem imagem) {
		// TODO Auto-generated method stub
		
	}

	@Override
	@Transactional
	public Imagem buscaPorId(Long id) {
		Query consulta = sessao.getCurrentSession().getNamedQuery("Imagem.buscaPorId");
		consulta.setLong("id", id);
				
		Imagem imagem = (Imagem) consulta.uniqueResult();
		
		return imagem;
	}

}
