package br.com.ohexpress.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import org.codehaus.jackson.annotate.JsonIgnore;
import org.hibernate.annotations.NamedQueries;
import org.hibernate.annotations.NamedQuery;


@NamedQueries({
@NamedQuery(name = "ItemProduto.buscaPorId",query = "SELECT itemProduto FROM ItemProduto itemProduto WHERE itemProduto.id = :id ")

})
@Entity
@Table(name = "ItemProduto")
public class ItemProduto implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)	
	private Long id;
	private String nome;
	private String descricao;
	private boolean status;
	@ManyToMany(mappedBy="itemProduto")	
	@JsonIgnore
    private Set<Produto> produto = new HashSet<Produto>(0);
	
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public Set<Produto> getProduto() {
		return produto;
	}
	public void setProduto(Set<Produto> produto) {
		this.produto = produto;
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