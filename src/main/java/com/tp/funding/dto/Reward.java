package com.tp.funding.dto;

import java.sql.Date;

public class Reward {
	
	private int rewardCode;                  
	private String rewardName;                
	private int rewardCondition;            
	private int rewardGrade;               
	private String rewardImage;              
	private Date fundingRewardDeliveryDate;       
	private int rewardInterst;             
	private int fundingInvestmentPeriod;   
	private int investmentReceiveCount;    
	private int fundingCode;               
	// join해서 출력
	private String fundingName;
	private Date fundingTargetDate;
	private String fundingThumbnailImage;            
}
