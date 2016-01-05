package br.com.ohexpress.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.ohexpress.model.Loja;

@Repository
public class LojaDaoImp implements LojaDAO {
	
	@Autowired
	private SessionFactory sessao;

	@Override
	@Transactional
	public void salvar(Loja loja) {
		sessao.getCurrentSession().merge(loja);
		
	}
	@Override
	@Transactional
	public void update(Loja loja) {
		
		
		sessao.getCurrentSession().update(loja);
		
	}
	
	
	@Override
	@Transactional
	public Long count() {
		
		
		Long count = (Long) sessao.getCurrentSession().createQuery("select count(*) from Loja")
                .uniqueResult();
		
		return count;
		
	}
	@Override
	@Transactional
	public List<Loja> listar() {	
		@SuppressWarnings("unchecked")
		List<Loja> listLoja = (List<Loja>) sessao.getCurrentSession()
				.createCriteria(Loja.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list(); 
		
		
		return listLoja;
	}

	@Override
	@Transactional
	public List<Loja> listarAtivos() {
		
		Query consulta =  sessao.getCurrentSession().getNamedQuery("Loja.listAtivas");

		@SuppressWarnings("unchecked")
		List<Loja> listLoja = (List<Loja>) consulta.list();
		
		
		return listLoja;
	}

	@Override
	@Transactional
	public Loja buscaPorId(Long id) {
		
		Query consulta = sessao.getCurrentSession().getNamedQuery("Loja.buscaPorId");
		consulta.setLong("id", id);
		
		
		Loja loja = (Loja) consulta.uniqueResult();
		
		return loja;
	}

	@Override
	@Transactional
	public void deleteLoja(Long id) {
		
		Loja loja = buscaPorId(id);
		
		  if (loja != null){
	            sessao.getCurrentSession().delete(loja);
	    }
		// TODO Auto-generated method stub
		
		return;
	}

}
