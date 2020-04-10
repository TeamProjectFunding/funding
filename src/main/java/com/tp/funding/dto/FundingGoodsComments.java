package com.tp.funding.dto;

import java.sql.Date;

public class FundingGoodsComments {
	//상품에 대한 댓글
	private int fgCommentsNumber;        
	private String fgCommentsContent ;    
    private Date fgCommentsDate;		   
	private int fgcommentsExistReply;    
	private int fundingCode;             
	private String userId;               
	
	//user join
	private String userProfileImage;      
	private String userName;       
}
