package com.tp.funding.dto;

import java.sql.Date;

public class FundingGoodsDetail {

	private int fundingGoodsDetailNumber;
	private int fundingAmount;
	private Date fundingDate;
	private int fundingRewardAddDonation;
	private Date fundingTargetDate;
	private int fundingCode;
	private String userId;

	// paging
	private int startRow;
	private int endRow;

	// user join
	private String userProfileImage;
	private String userName;
	// event 마감처리에 사용될 eventNumber
	private int eventNumber;

	// fundingGoods join
	private String fundingThumbnailImage;
	private String fundingName;
	private int fundingTargetRate;

	public FundingGoodsDetail() {
	}

	public int getFundingGoodsDetailNumber() {
		return fundingGoodsDetailNumber;
	}

	public void setFundingGoodsDetailNumber(int fundingGoodsDetailNumber) {
		this.fundingGoodsDetailNumber = fundingGoodsDetailNumber;
	}

	public int getFundingAmount() {
		return fundingAmount;
	}

	public void setFundingAmount(int fundingAmount) {
		this.fundingAmount = fundingAmount;
	}

	public Date getFundingDate() {
		return fundingDate;
	}

	public void setFundingDate(Date fundingDate) {
		this.fundingDate = fundingDate;
	}

	public int getFundingRewardAddDonation() {
		return fundingRewardAddDonation;
	}

	public void setFundingRewardAddDonation(int fundingRewardAddDonation) {
		this.fundingRewardAddDonation = fundingRewardAddDonation;
	}

	public Date getFundingTargetDate() {
		return fundingTargetDate;
	}

	public void setFundingTargetDate(Date fundingTargetDate) {
		this.fundingTargetDate = fundingTargetDate;
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

	public int getEventNumber() {
		return eventNumber;
	}

	public void setEventNumber(int eventNumber) {
		this.eventNumber = eventNumber;
	}

	public String getFundingThumbnailImage() {
		return fundingThumbnailImage;
	}

	public void setFundingThumbnailImage(String fundingThumbnailImage) {
		this.fundingThumbnailImage = fundingThumbnailImage;
	}

	public String getFundingName() {
		return fundingName;
	}

	public void setFundingName(String fundingName) {
		this.fundingName = fundingName;
	}

	public int getFundingTargetRate() {
		return fundingTargetRate;
	}

	public void setFundingTargetRate(int fundingTargetRate) {
		this.fundingTargetRate = fundingTargetRate;
	}

	@Override
	public String toString() {
		return "FundingGoodsDetail [fundingGoodsDetailNumber=" + fundingGoodsDetailNumber + ", fundingAmount="
				+ fundingAmount + ", fundingDate=" + fundingDate + ", fundingRewardAddDonation="
				+ fundingRewardAddDonation + ", fundingTargetDate=" + fundingTargetDate + ", fundingCode=" + fundingCode
				+ ", userId=" + userId + ", startRow=" + startRow + ", endRow=" + endRow + ", userProfileImage="
				+ userProfileImage + ", userName=" + userName + ", eventNumber=" + eventNumber
				+ ", fundingThumbnailImage=" + fundingThumbnailImage + ", fundingName=" + fundingName
				+ ", fundingTargetRate=" + fundingTargetRate + "]";
	}

}
