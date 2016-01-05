package br.com.ohexpress.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

import org.hibernate.annotations.NamedQueries;
import org.hibernate.annotations.NamedQuery;
@NamedQueries({
@NamedQuery(name = "Imagem.buscaPorId",query = "SELECT imagem FROM Imagem imagem WHERE imagem.id = :id ")

})
@Entity
public class Imagem implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
    private String fileName;
    @Lob
    @Column(length=20971520)
    private byte[] data; 
    @OneToOne(mappedBy="imgProduto")
    @PrimaryKeyJoinColumn
    private Produto produto;	

	public Produto getProduto() {
		return produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
	}




	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "FILE_ID")
    public long getId() {
        return id;
    }
 
    public void setId(long id) {
        this.id = id;
    }
 
    @Column(name = "FILE_NAME")
    public String getFileName() {
        return fileName;
    }
 
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }
 
    @Column(name = "FILE_DATA")
    public byte[] getData() {
        return data;
    }
 
    public void setData(byte[] data) {
        this.data = data;
    }


}
