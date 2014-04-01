package com.horariolivre.entity;

// Generated 24/03/2014 06:49:18 by Hibernate Tools 3.4.0.CR1

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * ConfigHorarioLivre generated by hbm2java
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "config_horario_livre")
public class ConfigHorarioLivre implements java.io.Serializable {

	private int id;
	private Date horaInicial;
	private Date horaFinal;
	private int duracao;

	public ConfigHorarioLivre() {
	}

	public ConfigHorarioLivre(Date horaInicial, Date horaFinal,			int duracao) {
		this.horaInicial = horaInicial;
		this.horaFinal = horaFinal;
		this.duracao = duracao;
	}

	@Id
	@Column(name = "id", unique = true, nullable = false)
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Temporal(TemporalType.TIME)
	@Column(name = "hora_inicial", nullable = false, length = 15)
	public Date getHoraInicial() {
		return this.horaInicial;
	}

	public void setHoraInicial(Date horaInicial) {
		this.horaInicial = horaInicial;
	}

	@Temporal(TemporalType.TIME)
	@Column(name = "hora_final", nullable = false, length = 15)
	public Date getHoraFinal() {
		return this.horaFinal;
	}

	public void setHoraFinal(Date horaFinal) {
		this.horaFinal = horaFinal;
	}

	@Column(name = "duracao", nullable = false)
	public int getDuracao() {
		return this.duracao;
	}

	public void setDuracao(int duracao) {
		this.duracao = duracao;
	}
}
