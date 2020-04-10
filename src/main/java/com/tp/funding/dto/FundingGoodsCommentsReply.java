package com.tp.funding.dto;

import java.sql.Date;

public class FundingGoodsCommentsReply {
	
	private int fgCommentsReplyNumber;        
	private String fgCommentsReplyContent; 
    private Date fgCommentsReplyDate;            
	private int fgCommentsNumber;               
    private String userId;               
    
    //user join
	private String userProfileImage;      
	private String userName;
	public int getFgCommentsReplyNumber() {
		return fgCommentsReplyNumber;
	}
	public void setFgCommentsReplyNumber(int fgCommentsReplyNumber) {
		this.fgCommentsReplyNumber = fgCommentsReplyNumber;
	}
	public String getFgCommentsReplyContent() {
		return fgCommentsReplyContent;
	}
	public void setFgCommentsReplyContent(String fgCommentsReplyContent) {
		this.fgCommentsReplyContent = fgCommentsReplyContent;
	}
	public Date getFgCommentsReplyDate() {
		return fgCommentsReplyDate;
	}
	public void setFgCommentsReplyDate(Date fgCommentsReplyDate) {
		this.fgCommentsReplyDate = fgCommentsReplyDate;
	}
	public int getFgCommentsNumber() {
		return fgCommentsNumber;
	}
	public void setFgCommentsNumber(int fgCommentsNumber) {
		this.fgCommentsNumber = fgCommentsNumber;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserProfileImage() {
		return userProfileImage;
	}
	public void setUserProfileImage(String userProfileImage) {
		this.userProfileImage = userProfileImage;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public FundingGoodsCommentsReply(int fgCommentsReplyNumber, String fgCommentsReplyContent, Date fgCommentsReplyDate,
			int fgCommentsNumber, String userId, String userProfileImage, String userName) {
		super();
		this.fgCommentsReplyNumber = fgCommentsReplyNumber;
		this.fgCommentsReplyContent = fgCommentsReplyContent;
		this.fgCommentsReplyDate = fgCommentsReplyDate;
		this.fgCommentsNumber = fgCommentsNumber;
		this.userId = userId;
		this.userProfileImage = userProfileImage;
		this.userName = userName;
	}
	public FundingGoodsCommentsReply() {
		super();
	}
	@Override
	public String toString() {
		return "FundingGoodsCommentsReply [fgCommentsReplyNumber=" + fgCommentsReplyNumber + ", fgCommentsReplyContent="
				+ fgCommentsReplyContent + ", fgCommentsReplyDate=" + fgCommentsReplyDate + ", fgCommentsNumber="
				+ fgCommentsNumber + ", userId=" + userId + ", userProfileImage=" + userProfileImage + ", userName="
				+ userName + "]";
	}   
	
	
}
