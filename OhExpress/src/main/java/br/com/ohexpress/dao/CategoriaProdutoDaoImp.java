package br.com.ohexpress.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.ohexpress.model.CategoriaProduto;

@Repository
public class CategoriaProdutoDaoImp implements CategoriaProdutoDAO{
	

	@Autowired
	private SessionFactory sessao;
	
	
	@Override
	@Transactional
	public void salvar(CategoriaProduto categoriaProduto) {
		
		sessao.getCurrentSession().merge(categoriaProduto);
		
			
	}
	
	@Override
	@Transactional
	public List<CategoriaProduto> listar() {
		@SuppressWarnings("unchecked")
		List<CategoriaProduto> listCat =  (List<CategoriaProduto>) sessao.getCurrentSession()
				.createCriteria(CategoriaProduto.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listCat;
	}

	@Override
	@Transactional
	public CategoriaProduto buscaPorId(Long id){
		
		Query consulta = sessao.getCurrentSession().getNamedQuery("CategoriaProduto.buscaPorId");
		consulta.setLong("id", id);
		
		
		CategoriaProduto categoriaProduto = (CategoriaProduto) consulta.uniqueResult();
		
		return categoriaProduto;
	}
	@Override
	@Transactional
	public void update(CategoriaProduto categoriaProduto) {
		sessao.getCurrentSession().update(categoriaProduto);
		
	}

}
