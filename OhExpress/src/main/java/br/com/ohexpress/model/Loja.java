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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.hibernate.annotations.NamedQueries;
import org.hibernate.annotations.NamedQuery;



@NamedQueries({
@NamedQuery(name = "Loja.buscaPorId",query = "SELECT loja FROM Loja loja WHERE loja.id = :id "),
@NamedQuery(name = "Loja.listAtivas",query = "SELECT loja FROM Loja loja WHERE loja.status = true ")

})

@Entity
public class Loja implements Serializable {
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String nome;
	@Column(length = 65535,columnDefinition="Text")
	private String descricao;
	private boolean status;
	@ManyToOne
	private Usuario administrador;
	@OneToMany(fetch=FetchType.EAGER)
	private Set<Usuario> colaborador;
	@OneToOne(cascade = CascadeType.ALL, fetch=FetchType.EAGER)
	@JoinColumn(name="id_endereco")
	private Endereco endereco;
	//@ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE}, fetch=FetchType.EAGER)
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "loja_categoria",joinColumns = @JoinColumn(name = "categoria_id"),inverseJoinColumns = @JoinColumn(name = "loja_id")) 
	private Set<Categoria> categoria = new HashSet<Categoria>(0);	
	@ManyToMany(mappedBy="loja",cascade = CascadeType.ALL,fetch = FetchType.EAGER)	
	@JsonIgnore 
	private Set<CategoriaProduto> categoriaProduto = new HashSet<CategoriaProduto>(0);
	
	private String imgLoja;	
	//@JsonIgnore
	@ManyToMany( mappedBy = "loja",fetch = FetchType.EAGER)
	private Set<Produto> produto = new HashSet<Produto>(0);	

	
	
	public Set<CategoriaProduto> getCategoriaProduto() {
		return categoriaProduto;
	}
	public void setCategoriaProduto(Set<CategoriaProduto> categoriaProduto) {
		this.categoriaProduto = categoriaProduto;
	}
	public String getImgLoja() {
		return imgLoja;
	}
	public void setImgLoja(String string) {
		this.imgLoja = string;
	}
	public Usuario getAdministrador() {
		return administrador;
	}
	public void setAdministrador(Usuario administrador) {
		this.administrador = administrador;
	}
	public Set<Usuario> getColaborador() {
		return colaborador;
	}
	public void setColaborador(Set<Usuario> colaborador) {
		this.colaborador = colaborador;
	}

	public Set<Produto> getProduto() {
		return produto;
	}
	public void setProduto(Set<Produto> produto) {
		this.produto = produto;
	}
	
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
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
	public Endereco getEndereco() {
		return endereco;
	}
	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

	public Set<Categoria> getCategoria() {
		return this.categoria;
	}
	public void setCategoria(Set<Categoria> categoria) {
		this.categoria = categoria;
	}
	 
	
}
