package com.tp.funding.dto;

import java.sql.Date;

public class FundingQuestion {
	private int fundingQuestionNumber;
	private String fundingQuestionTitle;
	private String fundingQuestionContent;
	private Date fundingQuestionDate;
	private int fundingQuestionExistReply;
	private int fundingCode;
	private String userId;

	// paging
	private int startRow;
	private int endRow;

	// Users join
	private String userName;
	private String userProfileImage;
	public FundingQuestion() {
		super();
	}
	public FundingQuestion(int fundingQuestionNumber, String fundingQuestionTitle, String fundingQuestionContent,
			Date fundingQuestionDate, int fundingQuestionExistReply, int fundingCode, String userId, int startRow,
			int endRow, String userName, String userProfileImage) {
		super();
		this.fundingQuestionNumber = fundingQuestionNumber;
		this.fundingQuestionTitle = fundingQuestionTitle;
		this.fundingQuestionContent = fundingQuestionContent;
		this.fundingQuestionDate = fundingQuestionDate;
		this.fundingQuestionExistReply = fundingQuestionExistReply;
		this.fundingCode = fundingCode;
		this.userId = userId;
		this.startRow = startRow;
		this.endRow = endRow;
		this.userName = userName;
		this.userProfileImage = userProfileImage;
	}
	public int getFundingQuestionNumber() {
		return fundingQuestionNumber;
	}
	public void setFundingQuestionNumber(int fundingQuestionNumber) {
		this.fundingQuestionNumber = fundingQuestionNumber;
	}
	public String getFundingQuestionTitle() {
		return fundingQuestionTitle;
	}
	public void setFundingQuestionTitle(String fundingQuestionTitle) {
		this.fundingQuestionTitle = fundingQuestionTitle;
	}
	public String getFundingQuestionContent() {
		return fundingQuestionContent;
	}
	public void setFundingQuestionContent(String fundingQuestionContent) {
		this.fundingQuestionContent = fundingQuestionContent;
	}
	public Date getFundingQuestionDate() {
		return fundingQuestionDate;
	}
	public void setFundingQuestionDate(Date fundingQuestionDate) {
		this.fundingQuestionDate = fundingQuestionDate;
	}
	public int getFundingQuestionExistReply() {
		return fundingQuestionExistReply;
	}
	public void setFundingQuestionExistReply(int fundingQuestionExistReply) {
		this.fundingQuestionExistReply = fundingQuestionExistReply;
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
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserProfileImage() {
		return userProfileImage;
	}
	public void setUserProfileImage(String userProfileImage) {
		this.userProfileImage = userProfileImage;
	}
	@Override
	public String toString() {
		return "FundingQuestion [fundingQuestionNumber=" + fundingQuestionNumber + ", fundingQuestionTitle="
				+ fundingQuestionTitle + ", fundingQuestionContent=" + fundingQuestionContent + ", fundingQuestionDate="
				+ fundingQuestionDate + ", fundingQuestionExistReply=" + fundingQuestionExistReply + ", fundingCode="
				+ fundingCode + ", userId=" + userId + ", startRow=" + startRow + ", endRow=" + endRow + ", userName="
				+ userName + ", userProfileImage=" + userProfileImage + "]";
	}
	
}
