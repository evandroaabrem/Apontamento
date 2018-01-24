package com.addolux.purchaserequest.dto;

public class PurchaseRequestDTO {

	 private String poNumber; 
     private String date; 
     private String justification; 
     private String status;
     
     public String getPoNumber() { 
         return poNumber; 
     } 
     public void setPoNumber(String poNumber) { 
         this.poNumber = poNumber; 
     } 
     public String getDate() { 
         return date; 
     } 
     public void setDate(String date) { 
         this.date = date; 
     } 
     public String getJustification() { 
         return justification; 
     } 
     public void setJustification(String justification) { 
         this.justification = justification; 
     }
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	} 
	
     
     
}
