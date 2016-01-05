package br.com.ohexpress.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
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
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.hibernate.annotations.NamedQueries;
import org.hibernate.annotations.NamedQuery;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;

@NamedQueries({
@NamedQuery(name = "Produto.buscaPorId",query = "SELECT produto FROM Produto produto WHERE produto.id = :id "),
@NamedQuery(name = "Produto.buscaPorLoja",query = "from Produto produto inner join fetch produto.loja pl where pl.id = :id "),
@NamedQuery(name = "Produto.buscaPorCategoria",query = "from Produto produto inner join fetch produto.categoriaProduto pl where pl.id = :id ")
})
@Entity
@Table(name = "Produto")
public class Produto implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    
    private Long id;
    private String nome;
    @Column(length = 65535,columnDefinition="Text")
    private String descricao;
    private boolean status;
    @OneToOne(cascade = CascadeType.ALL)
	private Imagem imgProduto;	
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    @Column(updatable = false)
    private Date dataCadastro;
    @NumberFormat(pattern="###0.00")
    private double preco;
    @JsonIgnore
    @ManyToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
	@JoinTable(name = "produto_loja",joinColumns = @JoinColumn(name = "id_produto"),inverseJoinColumns = @JoinColumn(name = "id_loja"))
    private Set<Loja> loja = new HashSet<Loja>(0); 
    
    
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "produto_categoriaProduto",joinColumns = @JoinColumn(name = "id_produto"),inverseJoinColumns = @JoinColumn(name = "id_categoriaProduto"))
    private Set<CategoriaProduto> categoriaProduto = new HashSet<CategoriaProduto>(0);
	
    
    @ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "Produto_ItemProduto",joinColumns = @JoinColumn(name = "produto_id"),inverseJoinColumns = @JoinColumn(name = "itemProduto_id")) 
	private Set<ItemProduto> itemProduto = new HashSet<ItemProduto>(0);

   
	public Set<CategoriaProduto> getCategoriaProduto() {
		return categoriaProduto;
	}
	public void setCategoriaProduto(Set<CategoriaProduto> categoriaProduto) {
		this.categoriaProduto = categoriaProduto;
	}
	public Date getDataCadastro() {
		return dataCadastro;
	}
	public void setDataCadastro(Date dataCadastro) {
		this.dataCadastro = dataCadastro;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public Set<ItemProduto> getItemProduto() {
		return itemProduto;
	}
	public void setItemProduto(Set<ItemProduto> itemProduto) {
		this.itemProduto = itemProduto;
	}
	private ArrayList<String> imagens;
    
	public ArrayList<String> getImagens() {
		return imagens;
	}
	public void setImagens(List<String> list) {
		this.imagens = (ArrayList<String>) list;
	}
	

	public Imagem getImgProduto() {
		return imgProduto;
	}
	public void setImgProduto(Imagem imgProduto) {
		this.imgProduto = imgProduto;
	}
	public double getPreco() {
		return preco;
	}
	public void setPreco(double preco) {
		this.preco = preco;
	}


	public Set<Loja> getLoja() {
		return loja;
	}
	public void setLoja(Set<Loja> loja) {
		this.loja = loja;
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