package com.tp.funding.dto;

import java.sql.Date;

public class FundingQuestion {
	private int fundingQuestionNumber;        
	private String fundingQuestionContent;    
	private Date fundingQuestionDate;                 
	private int fundingQuestionExistReply;   
	private int fundingCode;                   
	private String userId;
	
	//Users join
	private String userName;
	private String userProfileImage;
	
}
