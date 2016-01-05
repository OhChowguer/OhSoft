package br.com.ohexpress.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.hibernate.annotations.NamedQueries;
import org.hibernate.annotations.NamedQuery;

@NamedQueries({
@NamedQuery(name = "CategoriaProduto.buscaPorId",query = "SELECT categoriaProduto FROM CategoriaProduto categoriaProduto WHERE categoriaProduto.id = :id ")

})

@Entity
public class CategoriaProduto implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String nome;
	@Column(length = 65535,columnDefinition="Text")
	private String descricao;
	private boolean endImg;	
	
	@ManyToMany(mappedBy="categoriaProduto",cascade = CascadeType.ALL)	
	@JsonIgnore
    private Set<Produto> produto = new HashSet<Produto>(0);
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "categoriaProduto_loja",joinColumns = @JoinColumn(name = "categoriaProduto_id"),inverseJoinColumns = @JoinColumn(name = "loja_id"))
	
    private Set<Loja> loja = new HashSet<Loja>(0);
	

	public Set<Loja> getLoja() {
		return loja;
	}

	public void setLoja(Set<Loja> loja) {
		this.loja = loja;
	}

	public Set<Produto> getProduto() {
		return produto;
	}

	public void setProduto(Set<Produto> produto) {
		this.produto = produto;
	}
	public boolean isEndImg() {
		
		return endImg;
	}

	public void setEndImg(boolean endImg) {
		this.endImg = endImg;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

}
