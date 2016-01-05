package br.com.ohexpress.dao;


import java.util.List;


import br.com.ohexpress.model.Categoria;


public interface CategoriaDAO {
	
	
	public void salvar(Categoria categoria);

	public List<Categoria> listar();
	

	public Categoria buscaPorId(Long id);

	public void update(Categoria categoria);
}
