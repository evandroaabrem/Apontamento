package com.addolux.purchaserequest.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.addolux.purchaserequest.PurchaseRequestService;
import com.addolux.purchaserequest.dto.PurchaseRequestDTO;

public class PurchaseRequestServiceImpl implements PurchaseRequestService {

	@Override
	public List<PurchaseRequestDTO> getAllPurchaseRequests() {
		List<PurchaseRequestDTO> lstpurchaseRequestDTOs = new ArrayList<PurchaseRequestDTO>();
		
		PurchaseRequestDTO purchaseRequestDTO = new PurchaseRequestDTO();
		purchaseRequestDTO.setPoNumber("987777");
		purchaseRequestDTO.setJustification("sfafsdfaafd");
		purchaseRequestDTO.setStatus("A");
		
		
		lstpurchaseRequestDTOs.add(purchaseRequestDTO);
		
		PurchaseRequestDTO purchaseRequestDTO2 = new PurchaseRequestDTO();
		purchaseRequestDTO2.setPoNumber("987777");
		purchaseRequestDTO2.setJustification("sfafsdfaafd");
		purchaseRequestDTO2.setStatus("B");
		
		PurchaseRequestDTO purchaseRequestDTO3 = new PurchaseRequestDTO();
		purchaseRequestDTO3.setPoNumber("987777");
		purchaseRequestDTO3.setJustification("sfafsdfaafd");
		purchaseRequestDTO3.setStatus("C");
		
		lstpurchaseRequestDTOs.add(purchaseRequestDTO);
		lstpurchaseRequestDTOs.add(purchaseRequestDTO2);
		lstpurchaseRequestDTOs.add(purchaseRequestDTO3);
		
		return lstpurchaseRequestDTOs;
	}

}
