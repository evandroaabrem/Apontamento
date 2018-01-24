package com.addolux.purchaserequest.dto;

import java.util.Collection;

public class Maquinas {
	
	private Integer id;
	private String nomeMaquina;
	private String totalApont;
	private Collection<Operador> Operador;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNomeMaquina() {
		return nomeMaquina;
	}
	public void setNomeMaquina(String nomeMaquina) {
		this.nomeMaquina = nomeMaquina;
	}
	public String getTotalApont() {
		return totalApont;
	}
	public void setTotalApont(String totalApont) {
		this.totalApont = totalApont;
	}
	public Collection<Operador> getOperador() {
		return Operador;
	}
	public void setOperador(Collection<Operador> operador) {
		Operador = operador;
	}
	
	
	

}
