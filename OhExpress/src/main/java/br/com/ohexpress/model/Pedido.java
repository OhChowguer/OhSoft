package br.com.ohexpress.model;

import java.io.Serializable;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.hibernate.annotations.NamedQueries;
import org.hibernate.annotations.NamedQuery;


@NamedQueries({
@NamedQuery(name = "Pedido.buscaPorId",query = "SELECT pedido FROM Pedido pedido WHERE pedido.id = :id "),
@NamedQuery(name = "Pedido.listaPorLoja",query = "from Pedido pedido inner join fetch pedido.loja pl where pl.id = :id"),
@NamedQuery(name = "Pedido.listaPorComprador",query = "from Pedido pedido inner join fetch pedido.usuario pl where pl.id = :id")

})
@Entity
public class Pedido implements Serializable{
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)	
	private Long id;
	
	@OneToMany(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
	private Set<ItemPedido> item = new HashSet<ItemPedido>();
	@ManyToOne
	@JsonIgnore
	private Loja loja;
	private int status;
	@ManyToOne
	private FormaPagamento formPag;
	@ManyToOne
	private Usuario usuario;
	
	
	
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	public FormaPagamento getFormPag() {
		return formPag;
	}
	public void setFormPag(FormaPagamento formPag) {
		this.formPag = formPag;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Set<ItemPedido> getItem() {
		return item;
	}
	public void setItem(Set<ItemPedido> item) {
		this.item = item;
	}
	public Loja getLoja() {
		return loja;
	}
	public void setLoja(Loja loja) {
		this.loja = loja;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	  // Comparator
    public static class CompId implements Comparator<Pedido> {

		@Override
		public int compare(Pedido o1, Pedido o2) {
			return (int) (o2.getId() - o1.getId());
			
		}
    }
	
	

}
