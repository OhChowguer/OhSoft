package br.com.ohexpress.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.ohexpress.model.ItemProduto;

@Repository
public class ItemProdutoDaoImp implements ItemProdutoDAO{

	
	
	@Autowired
	private SessionFactory sessao;

	@Override
	@Transactional
	public void salvar(ItemProduto itemProduto) {
		sessao.getCurrentSession().merge(itemProduto);
		
	}
	
	@Override
	@Transactional
	public Long count() {
		
		
		Long count = (Long) sessao.getCurrentSession().createQuery("select count(*) from ItemProduto")
                .uniqueResult();
		
		return count;
		
	}

	@Override
	@Transactional
	public ItemProduto buscaPorId(Long id) {
		Query consulta = sessao.getCurrentSession().getNamedQuery("ItemProduto.buscaPorId");
		consulta.setLong("id", id);
				
		ItemProduto itemProduto = (ItemProduto) consulta.uniqueResult();
		
		return itemProduto;
	}

	@Override
	@Transactional
	public List<ItemProduto> listar() {
		@SuppressWarnings("unchecked")
		List<ItemProduto> listItemProduto = sessao.getCurrentSession()
				.createCriteria(ItemProduto.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listItemProduto;
		
	}

	@Override
	@Transactional
	public List<ItemProduto> listarPorLoja(Long id) {
		Query consulta = sessao.getCurrentSession().getNamedQuery("ItemProduto.listaPorLoja");
		consulta.setLong("id", id);
		
		
		@SuppressWarnings("unchecked")
		List<ItemProduto> ItensProduto = (List<ItemProduto>) consulta.list();

		return ItensProduto;
	}



	@Override
	@Transactional
	public void update(ItemProduto itemProduto) {
		sessao.getCurrentSession().update(itemProduto);
		
	}

}
