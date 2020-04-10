package com.tp.funding.dto;

import java.sql.Date;
//상품 상세 누가 투자를 얼마 했냐
public class FundingGoodsDetail {
	
	private int fundingGoodsDetailNumber;      
	private int fundingAmount;         
	private Date fundingDate;                
	private int fundingRewardAddDonation;
	private Date fundingTargetDate;           
	private int fundingCode;         
	private String userId;            
	
	//user join
	private String userProfileImage;      
	private String userName;              
}
