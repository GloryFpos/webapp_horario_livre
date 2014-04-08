package com.horariolivre.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@Table(name = "atributo")
public class Atributo implements java.io.Serializable {

	private static final long serialVersionUID = 6084758898903241369L;
	
	private int id;
	private Key key;
	private Value value;
	
	public Atributo() {
	}
	
	public Atributo(Key key, Value value) {
		this.key = key;
		this.value = value;
	}
	
	public Atributo(String key, String value) {
		this.key = new Key(key);
		this.value = new Value(value);
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
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="fk_key")
	@Cascade(org.hibernate.annotations.CascadeType.SAVE_UPDATE)
	@OnDelete(action = OnDeleteAction.CASCADE)
	public Key getKey() {
		return key;
	}
	
	public void setKey(Key key) {
		this.key = key;
	}
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="fk_value")
	@OnDelete(action = OnDeleteAction.CASCADE)
	public Value getValue() {
		return value;
	}
	
	public void setValue(Value value) {
		this.value = value;
	}

}
