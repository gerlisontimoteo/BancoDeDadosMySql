package com.api.jogo_online.modelo;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Personagens")
public class Personagens {
	
	@Id
	@Column(name="id_nome")
	private String id_nome;
	
	@Column(name="id_classe")
	private int id_classe;
	
	@Column(name="ataque")
	private double ataque;
	
	@Column(name="defesa")
	private double defesa;
	
	@Column(name="raca")
	private String raca;
	
	//getters & setters
	public String getId_nome() {
		return id_nome;
	}
	public void setId_nome(String id_nome) {
		this.id_nome = id_nome;
	}
	public int getId_classe() {
		return id_classe;
	}
	public void setId_classe(int id_classe) {
		this.id_classe = id_classe;
	}
	public double getAtaque() {
		return ataque;
	}
	public void setAtaque(double ataque) {
		this.ataque = ataque;
	}
	public double getDefesa() {
		return defesa;
	}
	public void setDefesa(double defesa) {
		this.defesa = defesa;
	}
	public String getRaca() {
		return raca;
	}
	public void setRaca(String raca) {
		this.raca = raca;
	}
	

}
