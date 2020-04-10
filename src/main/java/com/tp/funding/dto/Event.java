package com.tp.funding.dto;

import java.sql.Date;
//펀딩을 한 고객들이 이벤트의해당하는 정보들을 "뿌려준다 
public class Event {

	private int eventNumber;                 
	private String eventTilte;               
	private String eventContent;             
	private String eventThumbnailImage;       
	private String eventDetailImage;          
	private String eventProductName;           
	private String eventProductImage;        
	private int eventPrizeCount; 			// 이벤트 당첨자 수             
	private int eventParticipateCount;     // 펀딩에 참여한 인원(이벤트 신청 인원)
	private int eventHit;                 
	private Date eventStartDate;                    
	private Date eventEndDate;                       
	private Date eventProductDeliveryDate;           
	private String adminId;                  
	
}
