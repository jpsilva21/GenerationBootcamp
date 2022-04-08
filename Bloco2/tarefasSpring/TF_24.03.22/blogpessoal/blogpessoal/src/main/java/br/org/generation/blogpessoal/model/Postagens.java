package br.org.generation.blogpessoal.model;

import java.time.LocalDateTime;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.hibernate.annotations.UpdateTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity  //criar tabela
@Table(name= "tb_postagens")  //tabela
public class Postagens {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) //auto increment
		//letra maiuscula pq sim "Long"
	private Long id;   //Atributo
	
	@NotNull
	@Size(min=4, max=40)
	private String titulo;
	
	@NotNull
	@Size(min=5, max=100)  //esse parenteses ñ é aceito no notnull ; poder ser só o minimo ou só maximo
	private String texto;
	
	
	@UpdateTimestamp
	private LocalDateTime data;  //salva a data e hora do seu pc
	
	@ManyToOne
	@JsonIgnoreProperties("postagens")
	private Tema tema;
	
	@ManyToOne
	@JsonIgnoreProperties("usuario")
	private Usuario usuario;
	
	//por ultimo faz o Get and Set
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

	public LocalDateTime getData() {
		return data;
	}

	public void setData(LocalDateTime data) {
		this.data = data;
	}

	
	public Tema getTema() {
		return tema;
	}

	public void setTema(Tema tema) {
		this.tema = tema;
	}
	
}