package com.tp.funding.dto;

import java.sql.Date;

public class FundingGoodsComments {
	
	private int fgCommentsNumber;        
	private String fgCommentsContent ;    
    private Date fgCommentsDate;		   
	private int fgcommentsReplyCount;    
	private int fundingCode;             
	private String userId;               
	//paging
	private int startRow;
	private int endRow;
	
	//user join
	private String userProfileImage;      
	private String userName;
	public int getFgCommentsNumber() {
		return fgCommentsNumber;
	}
	public void setFgCommentsNumber(int fgCommentsNumber) {
		this.fgCommentsNumber = fgCommentsNumber;
	}
	public String getFgCommentsContent() {
		return fgCommentsContent;
	}
	public void setFgCommentsContent(String fgCommentsContent) {
		this.fgCommentsContent = fgCommentsContent;
	}
	public Date getFgCommentsDate() {
		return fgCommentsDate;
	}
	public void setFgCommentsDate(Date fgCommentsDate) {
		this.fgCommentsDate = fgCommentsDate;
	}
	public int getFgcommentsReplyCount() {
		return fgcommentsReplyCount;
	}
	public void setFgcommentsReplyCount(int fgcommentsReplyCount) {
		this.fgcommentsReplyCount = fgcommentsReplyCount;
	}
	public int getFundingCode() {
		return fundingCode;
	}
	public void setFundingCode(int fundingCode) {
		this.fundingCode = fundingCode;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
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
	public FundingGoodsComments() {
		super();
	}
	public FundingGoodsComments(int fgCommentsNumber, String fgCommentsContent, Date fgCommentsDate,
			int fgcommentsReplyCount, int fundingCode, String userId, int startRow, int endRow, String userProfileImage,
			String userName) {
		super();
		this.fgCommentsNumber = fgCommentsNumber;
		this.fgCommentsContent = fgCommentsContent;
		this.fgCommentsDate = fgCommentsDate;
		this.fgcommentsReplyCount = fgcommentsReplyCount;
		this.fundingCode = fundingCode;
		this.userId = userId;
		this.startRow = startRow;
		this.endRow = endRow;
		this.userProfileImage = userProfileImage;
		this.userName = userName;
	}
	@Override
	public String toString() {
		return "FundingGoodsComments [fgCommentsNumber=" + fgCommentsNumber + ", fgCommentsContent=" + fgCommentsContent
				+ ", fgCommentsDate=" + fgCommentsDate + ", fgcommentsReplyCount=" + fgcommentsReplyCount
				+ ", fundingCode=" + fundingCode + ", userId=" + userId + ", startRow=" + startRow + ", endRow="
				+ endRow + ", userProfileImage=" + userProfileImage + ", userName=" + userName + "]";
	}
	
	
	
	
	
	
	
	
	
}
