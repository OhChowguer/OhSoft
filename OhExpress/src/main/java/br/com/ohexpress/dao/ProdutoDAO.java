package br.com.ohexpress.dao;


import java.util.List;

import br.com.ohexpress.model.Produto;

public interface ProdutoDAO {
	
	
	public void salvar(Produto produto);
	public Produto buscaId(Long id);
	public List<Produto> listar();
	public List<Produto> listarPorCategoria(Long id);
	List<Produto> listarPorLoja(Long id);
	public void update(Produto produto);
	public Long count();

}
