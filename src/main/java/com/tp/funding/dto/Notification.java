package com.tp.funding.dto;

import java.sql.Date;

public class Notification {

	private int notificationNumber;
	private String notificationContent;
	private Date notificationDate;
	private int notificationRead;
	private String userId;
	private String adminId;
	private String companyId;
	private int fundingCode;

	// paging
	private int startRow;
	private int endRow;
	
	// Users join
	private String userName;
	private String userBankName;
	private int userAccountBalance;

	// FundingGoods join
	private String fundingThumbnailImage;
	private String fundingName;
	private String fundingRewardDeliveryDate;

	// FundingGoodsDetail join
	private int fundingAmount;
	private Date fundingDate;
	private int fundingRewardAddDonation;

	// Reward join
	private String rewardName;
	private int fundingInvestmentPeriod;
	private int investmentReceiveCount;
	private String rewardImage;

	// Event join
	private String eventTilte;
	private String eventThumbnailImage;
	private String eventProductName;
	private String eventProductImage;
	private Date eventProductDeliveryDate;
	public int getNotificationNumber() {
		return notificationNumber;
	}
	public void setNotificationNumber(int notificationNumber) {
		this.notificationNumber = notificationNumber;
	}
	public String getNotificationContent() {
		return notificationContent;
	}
	public void setNotificationContent(String notificationContent) {
		this.notificationContent = notificationContent;
	}
	public Date getNotificationDate() {
		return notificationDate;
	}
	public void setNotificationDate(Date notificationDate) {
		this.notificationDate = notificationDate;
	}
	public int getNotificationRead() {
		return notificationRead;
	}
	public void setNotificationRead(int notificationRead) {
		this.notificationRead = notificationRead;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getCompanyId() {
		return companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
	public int getFundingCode() {
		return fundingCode;
	}
	public void setFundingCode(int fundingCode) {
		this.fundingCode = fundingCode;
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
	public String getUserBankName() {
		return userBankName;
	}
	public void setUserBankName(String userBankName) {
		this.userBankName = userBankName;
	}
	public int getUserAccountBalance() {
		return userAccountBalance;
	}
	public void setUserAccountBalance(int userAccountBalance) {
		this.userAccountBalance = userAccountBalance;
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
	public String getFundingRewardDeliveryDate() {
		return fundingRewardDeliveryDate;
	}
	public void setFundingRewardDeliveryDate(String fundingRewardDeliveryDate) {
		this.fundingRewardDeliveryDate = fundingRewardDeliveryDate;
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
	public String getRewardName() {
		return rewardName;
	}
	public void setRewardName(String rewardName) {
		this.rewardName = rewardName;
	}
	public int getFundingInvestmentPeriod() {
		return fundingInvestmentPeriod;
	}
	public void setFundingInvestmentPeriod(int fundingInvestmentPeriod) {
		this.fundingInvestmentPeriod = fundingInvestmentPeriod;
	}
	public int getInvestmentReceiveCount() {
		return investmentReceiveCount;
	}
	public void setInvestmentReceiveCount(int investmentReceiveCount) {
		this.investmentReceiveCount = investmentReceiveCount;
	}
	public String getRewardImage() {
		return rewardImage;
	}
	public void setRewardImage(String rewardImage) {
		this.rewardImage = rewardImage;
	}
	public String getEventTilte() {
		return eventTilte;
	}
	public void setEventTilte(String eventTilte) {
		this.eventTilte = eventTilte;
	}
	public String getEventThumbnailImage() {
		return eventThumbnailImage;
	}
	public void setEventThumbnailImage(String eventThumbnailImage) {
		this.eventThumbnailImage = eventThumbnailImage;
	}
	public String getEventProductName() {
		return eventProductName;
	}
	public void setEventProductName(String eventProductName) {
		this.eventProductName = eventProductName;
	}
	public String getEventProductImage() {
		return eventProductImage;
	}
	public void setEventProductImage(String eventProductImage) {
		this.eventProductImage = eventProductImage;
	}
	public Date getEventProductDeliveryDate() {
		return eventProductDeliveryDate;
	}
	public void setEventProductDeliveryDate(Date eventProductDeliveryDate) {
		this.eventProductDeliveryDate = eventProductDeliveryDate;
	}
	public Notification(int notificationNumber, String notificationContent, Date notificationDate, int notificationRead,
			String userId, String adminId, String companyId, int fundingCode, int startRow, int endRow, String userName,
			String userBankName, int userAccountBalance, String fundingThumbnailImage, String fundingName,
			String fundingRewardDeliveryDate, int fundingAmount, Date fundingDate, int fundingRewardAddDonation,
			String rewardName, int fundingInvestmentPeriod, int investmentReceiveCount, String rewardImage,
			String eventTilte, String eventThumbnailImage, String eventProductName, String eventProductImage,
			Date eventProductDeliveryDate) {
		super();
		this.notificationNumber = notificationNumber;
		this.notificationContent = notificationContent;
		this.notificationDate = notificationDate;
		this.notificationRead = notificationRead;
		this.userId = userId;
		this.adminId = adminId;
		this.companyId = companyId;
		this.fundingCode = fundingCode;
		this.startRow = startRow;
		this.endRow = endRow;
		this.userName = userName;
		this.userBankName = userBankName;
		this.userAccountBalance = userAccountBalance;
		this.fundingThumbnailImage = fundingThumbnailImage;
		this.fundingName = fundingName;
		this.fundingRewardDeliveryDate = fundingRewardDeliveryDate;
		this.fundingAmount = fundingAmount;
		this.fundingDate = fundingDate;
		this.fundingRewardAddDonation = fundingRewardAddDonation;
		this.rewardName = rewardName;
		this.fundingInvestmentPeriod = fundingInvestmentPeriod;
		this.investmentReceiveCount = investmentReceiveCount;
		this.rewardImage = rewardImage;
		this.eventTilte = eventTilte;
		this.eventThumbnailImage = eventThumbnailImage;
		this.eventProductName = eventProductName;
		this.eventProductImage = eventProductImage;
		this.eventProductDeliveryDate = eventProductDeliveryDate;
	}
	public Notification() {
		super();
	}
	@Override
	public String toString() {
		return "Notification [notificationNumber=" + notificationNumber + ", notificationContent=" + notificationContent
				+ ", notificationDate=" + notificationDate + ", notificationRead=" + notificationRead + ", userId="
				+ userId + ", adminId=" + adminId + ", companyId=" + companyId + ", fundingCode=" + fundingCode
				+ ", startRow=" + startRow + ", endRow=" + endRow + ", userName=" + userName + ", userBankName="
				+ userBankName + ", userAccountBalance=" + userAccountBalance + ", fundingThumbnailImage="
				+ fundingThumbnailImage + ", fundingName=" + fundingName + ", fundingRewardDeliveryDate="
				+ fundingRewardDeliveryDate + ", fundingAmount=" + fundingAmount + ", fundingDate=" + fundingDate
				+ ", fundingRewardAddDonation=" + fundingRewardAddDonation + ", rewardName=" + rewardName
				+ ", fundingInvestmentPeriod=" + fundingInvestmentPeriod + ", investmentReceiveCount="
				+ investmentReceiveCount + ", rewardImage=" + rewardImage + ", eventTilte=" + eventTilte
				+ ", eventThumbnailImage=" + eventThumbnailImage + ", eventProductName=" + eventProductName
				+ ", eventProductImage=" + eventProductImage + ", eventProductDeliveryDate=" + eventProductDeliveryDate
				+ "]";
	}
	
	
	
}
