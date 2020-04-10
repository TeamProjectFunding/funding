package com.tp.funding.dto;

import java.sql.Date;

public class QnA {
	private int qnANumber;
	private String qnATilte;
	private String qnAContent;
	private int qnAHit;
	private int qnAOriginalWriter;
	private int qnAGroup;
	private int qnARef;
	private int qnAIndent;
	private Date qnADate;
	private String userId;
	private String companyId;
	private String adminId;
	
	//UserJoin
	private String userName;
	private String userProfileImage;
	
	//Company
	//회사이름, 회사 프로필이미지 
	private String companyProfileImage;
	private String companyName;

	//AdminId
	private String adminName;
}
