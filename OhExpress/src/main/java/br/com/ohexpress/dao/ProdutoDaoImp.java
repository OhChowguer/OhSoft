package br.com.ohexpress.dao;


import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.ohexpress.model.Produto;
@Repository
public class ProdutoDaoImp implements ProdutoDAO{
	
	
	@Autowired
	private SessionFactory sessao;

	
	@Override
	@Transactional
	public void salvar(Produto produto) {
		
		sessao.getCurrentSession().merge(produto);
		
	}

	@Override
	@Transactional
	public Produto buscaId(Long id) {
		Query consulta = sessao.getCurrentSession().getNamedQuery("Produto.buscaPorId");
		consulta.setLong("id", id);
		
		
		Produto produto = (Produto) consulta.uniqueResult();
		
		return produto;
	}

	@Override
	@Transactional
	public List<Produto> listar() {
		@SuppressWarnings("unchecked")
		List<Produto> listProduto = sessao.getCurrentSession()
				.createCriteria(Produto.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listProduto;
	}

	@Override
	@Transactional
	public List<Produto> listarPorLoja(Long id) {
		Query consulta = sessao.getCurrentSession().getNamedQuery("Produto.buscaPorLoja");
		consulta.setLong("id", id);
		
		
		@SuppressWarnings("unchecked")
		List<Produto> produtos = (List<Produto>) consulta.list();

		return produtos;
	}

	@Override
	@Transactional
	public void update(Produto produto) {
		sessao.getCurrentSession().update(produto);
		
	}

	@Override
	@Transactional
	public Long count() {
		Long count = (Long) sessao.getCurrentSession().createQuery("select count(*) from Produto")
                .uniqueResult();
		
		return count;
	}

	@Override
	@Transactional
	public List<Produto> listarPorCategoria(Long id) {
		Query consulta = sessao.getCurrentSession().getNamedQuery("Produto.buscaPorCategoria");
		consulta.setLong("id", id);
		
		
		@SuppressWarnings("unchecked")
		List<Produto> produtos = (List<Produto>) consulta.list();

		return produtos;
	}

}
