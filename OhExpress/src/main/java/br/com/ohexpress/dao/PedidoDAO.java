package br.com.ohexpress.dao;

import java.util.List;

import br.com.ohexpress.model.Pedido;


public interface PedidoDAO {
	
	
	public void salvar(Pedido pedido);
	public Pedido buscaId(Long id);
	public List<Pedido> listar();
	public List<Pedido> listarPorLoja(Long id);
	public List<Pedido> listarPorComprador(Long id);
	public Long count();
	public void update(Pedido pedido);

}
