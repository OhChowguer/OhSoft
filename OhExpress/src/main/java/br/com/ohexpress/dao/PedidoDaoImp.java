package br.com.ohexpress.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.ohexpress.model.Pedido;



@Repository
public class PedidoDaoImp implements PedidoDAO{
	
	@Autowired
	private SessionFactory sessao;

	@Override
	@Transactional
	public void salvar(Pedido pedido) {
		
		 sessao.getCurrentSession().save(pedido);
	
	}
	
	@Override
	@Transactional
	public Long count() {
		
		
		Long count = (Long) sessao.getCurrentSession().createQuery("select count(*) from Pedido")
                .uniqueResult();
		
		return count;
		
	}

	@Override
	@Transactional
	public Pedido buscaId(Long id) {
		Query consulta = sessao.getCurrentSession().getNamedQuery("Pedido.buscaPorId");
		consulta.setLong("id", id);
				
		Pedido pedido = (Pedido) consulta.uniqueResult();
		
		return pedido;
	}

	@Override
	@Transactional
	public List<Pedido> listar() {
		@SuppressWarnings("unchecked")
		List<Pedido> listPedido = sessao.getCurrentSession()
				.createCriteria(Pedido.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listPedido;
		
	}

	@Override
	@Transactional
	public List<Pedido> listarPorLoja(Long id) {
		Query consulta = sessao.getCurrentSession().getNamedQuery("Pedido.listaPorLoja");
		consulta.setLong("id", id);
		
		
		@SuppressWarnings("unchecked")
		List<Pedido> pedidos = (List<Pedido>) consulta.list();

		return pedidos;
	}

	@Override
	@Transactional
	public void update(Pedido pedido) {

		sessao.getCurrentSession().update(pedido);
		
	}

	@Override
	@Transactional
	public List<Pedido> listarPorComprador(Long id) {
		Query consulta = sessao.getCurrentSession().getNamedQuery("Pedido.listaPorComprador");
		consulta.setLong("id", id);
		
		
		@SuppressWarnings("unchecked")
		List<Pedido> pedidos = (List<Pedido>) consulta.list();

		return pedidos;
	}

}
