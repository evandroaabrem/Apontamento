package com.addolux.purchaserequest.controller;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.addolux.purchaserequest.dto.CadCentroCusto;
import com.addolux.purchaserequest.dto.Maquinas;

@RestController
@RequestMapping(value = "/centrocusto", produces = MediaType.APPLICATION_JSON_VALUE)
public class CentroCustoController {

	@RequestMapping(method = RequestMethod.GET)
	public Collection<CadCentroCusto> getCentroCusto() {
		Collection<CadCentroCusto> lstcc = new ArrayList();	         
		lstcc = setGerarMocks();
		return lstcc;
	}

	
	@RequestMapping(value="/search", method = RequestMethod.GET)
	public Collection<CadCentroCusto> getCentroCustoSearch(@RequestBody CadCentroCusto cadCentroCusto) {
		Collection<CadCentroCusto> lstcc = new ArrayList();	         
		lstcc = setGerarMocks();
		return lstcc;
	}
	
	@RequestMapping(value = "/{id}/{id1}", method = RequestMethod.GET)
	  public Collection<CadCentroCusto> findById(@PathVariable Long id, @PathVariable Long id1) {
		Collection<CadCentroCusto> lstcc = new ArrayList();	         
		lstcc = setGerarMocks();
		return lstcc;
    }
	
	
	
	private Collection<CadCentroCusto> setGerarMocks(){
		Collection<CadCentroCusto> lstcc = new ArrayList();
		Collection<Maquinas> lstMaquinas = new ArrayList();
		Maquinas maquinas1 = new Maquinas();
		maquinas1.setId(1);
		maquinas1.setNomeMaquina("Usinagem");
		maquinas1.setTotalApont("1000");

		Maquinas maquinas2 = new Maquinas();
		maquinas2.setId(2);
		maquinas2.setNomeMaquina("Estamparia");
		maquinas2.setTotalApont("1500");
		
		Maquinas maquinas3 = new Maquinas();
		maquinas3.setId(3);
		maquinas3.setNomeMaquina("Montagem");
		maquinas3.setTotalApont("3000");
		
		lstMaquinas.add(maquinas1);		
		lstMaquinas.add(maquinas2);
		lstMaquinas.add(maquinas3);
		
		CadCentroCusto cadCentroCusto = new CadCentroCusto();
		cadCentroCusto.setCodigoCC("32342");
		cadCentroCusto.setTotalApont("2040");
		cadCentroCusto.setTotalPrev("1000");
		cadCentroCusto.setMaquinas(lstMaquinas);
		
		CadCentroCusto cadCentroCusto1 = new CadCentroCusto();
		cadCentroCusto1.setCodigoCC("97653");
		cadCentroCusto1.setTotalApont("2040");
		cadCentroCusto1.setTotalPrev("1000");
		cadCentroCusto1.setMaquinas(lstMaquinas);		
		
		CadCentroCusto cadCentroCusto2 = new CadCentroCusto();
		cadCentroCusto2.setCodigoCC("75643");
		cadCentroCusto2.setTotalApont("2040");
		cadCentroCusto2.setTotalPrev("1000");
		cadCentroCusto2.setMaquinas(lstMaquinas);

		CadCentroCusto cadCentroCusto3 = new CadCentroCusto();
		cadCentroCusto3.setCodigoCC("87900");
		cadCentroCusto3.setTotalApont("2040");
		cadCentroCusto3.setTotalPrev("1000");
		cadCentroCusto3.setMaquinas(lstMaquinas);

		lstcc.add(cadCentroCusto);
		lstcc.add(cadCentroCusto1);
		lstcc.add(cadCentroCusto2);
		lstcc.add(cadCentroCusto3);		
		return lstcc;	
	}

}
