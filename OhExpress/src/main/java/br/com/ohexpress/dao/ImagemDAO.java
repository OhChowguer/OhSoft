package br.com.ohexpress.dao;

import br.com.ohexpress.model.Imagem;


public interface ImagemDAO {
    public void save(Imagem imagem);    
    public Imagem buscaPorId(Long id);
}