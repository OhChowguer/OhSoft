package br.com.ohexpress.dao;

import java.util.List;










import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import br.com.ohexpress.model.Usuario;

@Repository
public class UsuarioDaoImp implements UsuarioDAO {
	
	
	@Autowired
	private SessionFactory sessao;

	
	@Override
	@Transactional
	public List<Usuario> listar() {
		@SuppressWarnings("unchecked")
		List<Usuario> listUser = (List<Usuario>) sessao.getCurrentSession()
				.createCriteria(Usuario.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listUser;
	}
	@Override
	@Transactional
	public void salvar(Usuario user) {
		
		sessao.getCurrentSession().save(user);
		
	}
	
	
	@Override
	@Transactional
	public Long count() {
		
		
		Long count = (Long) sessao.getCurrentSession().createQuery("select count(*) from Usuario")
                .uniqueResult();
		
		return count;
		
	}
	@Override
	@Transactional 
	public Usuario autenticar(Usuario usuario){
		
		Query consulta = sessao.getCurrentSession().getNamedQuery("Usuario.buscaLogin");
		consulta.setString("login", usuario.getLogin());
		consulta.setString("senha", usuario.getSenha());
		
		usuario = (Usuario) consulta.uniqueResult();
		
		return usuario;
		
	}
	
	@Override
	@Transactional 
	public Long countUsuario(){
		
	Query consulta= sessao.getCurrentSession().createQuery("select count(*) FROM Usuario");	
		return (Long) consulta.uniqueResult();
		
	}
	
	@Override
	@Transactional 
	public Usuario autenticarComprador(Usuario usuario, int tipo) {
		Query consulta = sessao.getCurrentSession().getNamedQuery("Usuario.buscaLoginPorTipo");
		consulta.setString("login", usuario.getLogin());
		consulta.setInteger("tipo", tipo);
		consulta.setString("senha", usuario.getSenha());
		
		usuario = (Usuario) consulta.uniqueResult();
		
		return usuario;
	}
	@Override
	@Transactional
	public Usuario buscaPorId(Long id) {
		Query consulta = sessao.getCurrentSession().getNamedQuery("Usuario.buscaPorId");
		consulta.setLong("id", id);
				
		Usuario usuario = (Usuario) consulta.uniqueResult();
		
		return usuario;
	}
	

}
