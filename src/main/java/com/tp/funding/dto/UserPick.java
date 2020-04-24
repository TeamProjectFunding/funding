package com.tp.funding.dto;

import java.sql.Date;

public class UserPick {

	private int userPickNumber;
	private String userId;
	private int fundingCode;

	// join해서 출력
	private String fundingName;
	private int fundingCategory;
	private Date fundingTargetDate;
	private String fundingThumbnailImage;
	private String fundingTargetRate;

	public UserPick() {

	}

	public int getUserPickNumber() {
		return userPickNumber;
	}

	public void setUserPickNumber(int userPickNumber) {
		this.userPickNumber = userPickNumber;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getFundingCode() {
		return fundingCode;
	}

	public void setFundingCode(int fundingCode) {
		this.fundingCode = fundingCode;
	}

	public String getFundingName() {
		return fundingName;
	}

	public void setFundingName(String fundingName) {
		this.fundingName = fundingName;
	}

	public int getFundingCategory() {
		return fundingCategory;
	}

	public void setFundingCategory(int fundingCategory) {
		this.fundingCategory = fundingCategory;
	}

	public Date getFundingTargetDate() {
		return fundingTargetDate;
	}

	public void setFundingTargetDate(Date fundingTargetDate) {
		this.fundingTargetDate = fundingTargetDate;
	}

	public String getFundingThumbnailImage() {
		return fundingThumbnailImage;
	}

	public void setFundingThumbnailImage(String fundingThumbnailImage) {
		this.fundingThumbnailImage = fundingThumbnailImage;
	}

	public String getFundingTargetRate() {
		return fundingTargetRate;
	}

	public void setFundingTargetRate(String fundingTargetRate) {
		this.fundingTargetRate = fundingTargetRate;
	}

	@Override
	public String toString() {
		return "UserPick [userPickNumber=" + userPickNumber + ", userId=" + userId + ", fundingCode=" + fundingCode
				+ ", fundingName=" + fundingName + ", fundingCategory=" + fundingCategory + ", fundingTargetDate="
				+ fundingTargetDate + ", fundingThumbnailImage=" + fundingThumbnailImage + ", fundingTargetRate="
				+ fundingTargetRate + "]";
	}

}
