package br.com.ohexpress.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.ohexpress.model.Endereco;

@Repository
public class EnderecoDaoImp  implements EnderecoDAO{
	
	@Autowired
	private SessionFactory sessao;

	@Override
	@Transactional
	public void salvar(Endereco endereco) {
		sessao.getCurrentSession().merge(endereco);
		
	}

	
	
}
