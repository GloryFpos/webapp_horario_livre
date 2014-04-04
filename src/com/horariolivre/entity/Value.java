package com.horariolivre.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

// Generated 24/03/2014 06:49:18 by Hibernate Tools 3.4.0.CR1

/**
 * DadosUsuario generated by hbm2java
 */

@Entity
@Table(name = "value")
public class Value implements java.io.Serializable {

	private static final long serialVersionUID = 6515224281217075194L;
	
	private int id;
	private String conteudo;

	public Value() {
	}
	
	public Value(String conteudo) {
		this.conteudo = conteudo;
	}

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "conteudo")
	public String getConteudo() {
		return conteudo;
	}

	public void setConteudo(String conteudo) {
		this.conteudo = conteudo;
	}
}