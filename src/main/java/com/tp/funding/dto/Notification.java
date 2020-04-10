package com.tp.funding.dto;

import java.sql.Date;

public class Notification {
	
	private int notificationNumber;    
	private String notificationContent;  
	private Date notificationDate;        
	private int notificationRead;     
	private String userId;                
	private String adminId;              
	private String companyId;              
	private int fundingCode;           
	
	//Users join
	private String userName; 
	private String userBankName; 
	private int userAccountBalance;
	
	//FundingGoods join
	private String fundingThumbnailImage;           
	private String fundingName;           
	private String fundingRewardDeliveryDate;           
       
	// FundingGoodsDetail join
	private int fundingAmount; 
	private Date fundingDate; 
	private int fundingRewardAddDonation;           
	 
	//Reward join
	private String rewardName;
	private int fundingInvestmentPeriod;
	private int investmentReceiveCount;
	private String rewardImage;
	
	//Event join
	private String eventTilte;               
	private String eventThumbnailImage;       
	private String eventProductName;           
	private String eventProductImage;        
	private Date eventProductDeliveryDate;      
}
