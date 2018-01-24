package com.addolux.purchaserequest.dto;

import java.util.ArrayList;
import java.util.Collection;

public class CadCentroCusto {
	private Integer id;
	private String codigoCC;
	private String totalApont;
	private String totalPrev;
	private Collection<Maquinas> Maquinas;
		
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCodigoCC() {
		return codigoCC;
	}
	public void setCodigoCC(String codigoCC) {
		this.codigoCC = codigoCC;
	}
	public String getTotalApont() {
		return totalApont;
	}
	public void setTotalApont(String totalApont) {
		this.totalApont = totalApont;
	}
	public String getTotalPrev() {
		return totalPrev;
	}
	public void setTotalPrev(String totalPrev) {
		this.totalPrev = totalPrev;
	}
	public Collection<Maquinas> getMaquinas() {
		return Maquinas;
	}
	public void setMaquinas(Collection<Maquinas> maquinas) {
		Maquinas = maquinas;
	}
	

}
