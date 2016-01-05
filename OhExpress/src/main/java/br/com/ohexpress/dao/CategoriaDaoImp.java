package br.com.ohexpress.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.ohexpress.model.Categoria;

@Repository
public class CategoriaDaoImp implements CategoriaDAO{
	

	@Autowired
	private SessionFactory sessao;
	
	
	@Override
	@Transactional
	public void salvar(Categoria categoria) {
		
		sessao.getCurrentSession().merge(categoria);
		
			
	}
	
	@Override
	@Transactional
	public List<Categoria> listar() {
		@SuppressWarnings("unchecked")
		List<Categoria> listCat =  (List<Categoria>) sessao.getCurrentSession()
				.createCriteria(Categoria.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listCat;
	}

	@Override
	@Transactional
	public Categoria buscaPorId(Long id){
		
		Query consulta = sessao.getCurrentSession().getNamedQuery("Categoria.buscaPorId");
		consulta.setLong("id", id);
		
		
		Categoria categoria = (Categoria) consulta.uniqueResult();
		
		return categoria;
	}
	@Override
	@Transactional
	public void update(Categoria categoria) {
		sessao.getCurrentSession().update(categoria);
		
	}

}
