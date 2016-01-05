package br.com.ohexpress.dao;




import java.util.List;

import br.com.ohexpress.model.Loja;



public interface LojaDAO {
	
	
	public void salvar(Loja loja);
	
	public void update(Loja loja);

	public List<Loja> listar();
	
	public List<Loja> listarAtivos();

	public Loja buscaPorId(Long id);
	
	public void deleteLoja(Long id);

	public Long count();
	
	

}
