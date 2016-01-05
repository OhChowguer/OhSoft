package br.com.ohexpress.dao;



import java.util.List;

import br.com.ohexpress.model.Usuario;

public interface UsuarioDAO {

	public void salvar(Usuario usuario);

	public List<Usuario> listar();
	
	public Usuario autenticar(Usuario usuario);
	
	public Usuario autenticarComprador(Usuario usuario, int tipo);

	public Long countUsuario();

	public Long count();
	
	public Usuario buscaPorId(Long id);

}