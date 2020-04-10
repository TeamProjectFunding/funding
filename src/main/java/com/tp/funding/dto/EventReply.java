package com.tp.funding.dto;

import java.sql.Date;
//이벤트에 게시판 
public class EventReply {
	
	private int eventReplyNumber;        
	private String eventReplyContent;  
	private Date eventReplyDate;           
	private int eventNumber;               
	private String userId;            
	
	// Users join
	private String userProfileImage;
	private String userName;
}
