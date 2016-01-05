package br.com.ohexpress.dao;

import java.util.List;

import br.com.ohexpress.model.ItemProduto;


public interface ItemProdutoDAO {
	
	
	public void salvar(ItemProduto itemProduto);
	public ItemProduto buscaPorId(Long id);
	public List<ItemProduto> listar();
	List<ItemProduto> listarPorLoja(Long id);
	public void update(ItemProduto itemProduto);
	public Long count();

}
