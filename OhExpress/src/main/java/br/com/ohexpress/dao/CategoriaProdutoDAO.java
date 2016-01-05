package br.com.ohexpress.dao;


import java.util.List;


import br.com.ohexpress.model.CategoriaProduto;


public interface CategoriaProdutoDAO {
	
	
	public void salvar(CategoriaProduto categoriaProduto);

	public List<CategoriaProduto> listar();
	

	public CategoriaProduto buscaPorId(Long id);

	public void update(CategoriaProduto categoriaProduto);
}
