package com.tp.funding.dto;

import java.sql.Date;
//투자상품 
public class FundingGoods {
	
	private int fundingCode;                  
	private int fundingCategory;              
	private String fundingName;                    
	private String fundingDescription;            
	private String fundingThumbnailImage;        
	private String fundingDetailImage;               
	private String fundingExplanationFile;          
	private String fundingBankName;                  
	private String fundingBankDepositor;            
	private String fundingAccountNumber;            
	private int fundingAccountBalance;            
	private int fundingTargetAmount;             
	private int fundingTargetRate;                
	private Date fundingTargetDate;            
	private Date fundingRewardDeliveryDate;            
	private int fundingInvestmentProfitRate; 
	private int fundingInvestmentPeriod;    
	private int fundingSuccessOrFailure;     
	private int fundingPeopleCount;          
	private int fundingAdminPermit;          
	private String adminId;                     
	private String companyId;     
	
	//Company join
	private String companyProfileImage;    
	private String companyIntroduction;     
	private String companyName;           
	
}
