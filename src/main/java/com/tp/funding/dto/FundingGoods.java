package com.tp.funding.dto;

import java.sql.Date;

public class FundingGoods {
	
	private int fundingCode;                  
	private int fundingCategory;              
	private String fundingName;                    
	private String fundingDescription;            
	private String fundingThumbnailImage;        
	private String fundingDetailImage;               
	private String fundingExplanationFile;          
	private String fundingBankName;                  
	private String fundingBankDepositor;            
	private String fundingAccountNumber;            
	private int fundingAccountBalance;            
	private int fundingTargetAmount;             
	private int fundingTargetRate;                
	private Date fundingTargetDate;            
	private Date fundingRewardDeliveryDate;            
	private int fundingInvestmentProfitRate; 
	private int fundingInvestmentPeriod;    
	private int fundingSuccessOrFailure;     
	private int fundingPeopleCount;          
	private int fundingAdminPermit;          
	private String adminId;                     
	private String companyId;     
	
	private int commentCount; //코멘트 갯수
	//paging
	private int startRow;
	private int endRow;
	
	//Company join
	private String companyProfileImage;    
	private String companyIntroduction;     
	private String companyName;
	public int getFundingCode() {
		return fundingCode;
	}
	public void setFundingCode(int fundingCode) {
		this.fundingCode = fundingCode;
	}
	public int getFundingCategory() {
		return fundingCategory;
	}
	public void setFundingCategory(int fundingCategory) {
		this.fundingCategory = fundingCategory;
	}
	public String getFundingName() {
		return fundingName;
	}
	public void setFundingName(String fundingName) {
		this.fundingName = fundingName;
	}
	public String getFundingDescription() {
		return fundingDescription;
	}
	public void setFundingDescription(String fundingDescription) {
		this.fundingDescription = fundingDescription;
	}
	public String getFundingThumbnailImage() {
		return fundingThumbnailImage;
	}
	public void setFundingThumbnailImage(String fundingThumbnailImage) {
		this.fundingThumbnailImage = fundingThumbnailImage;
	}
	public String getFundingDetailImage() {
		return fundingDetailImage;
	}
	public void setFundingDetailImage(String fundingDetailImage) {
		this.fundingDetailImage = fundingDetailImage;
	}
	public String getFundingExplanationFile() {
		return fundingExplanationFile;
	}
	public void setFundingExplanationFile(String fundingExplanationFile) {
		this.fundingExplanationFile = fundingExplanationFile;
	}
	public String getFundingBankName() {
		return fundingBankName;
	}
	public void setFundingBankName(String fundingBankName) {
		this.fundingBankName = fundingBankName;
	}
	public String getFundingBankDepositor() {
		return fundingBankDepositor;
	}
	public void setFundingBankDepositor(String fundingBankDepositor) {
		this.fundingBankDepositor = fundingBankDepositor;
	}
	public String getFundingAccountNumber() {
		return fundingAccountNumber;
	}
	public void setFundingAccountNumber(String fundingAccountNumber) {
		this.fundingAccountNumber = fundingAccountNumber;
	}
	public int getFundingAccountBalance() {
		return fundingAccountBalance;
	}
	public void setFundingAccountBalance(int fundingAccountBalance) {
		this.fundingAccountBalance = fundingAccountBalance;
	}
	public int getFundingTargetAmount() {
		return fundingTargetAmount;
	}
	public void setFundingTargetAmount(int fundingTargetAmount) {
		this.fundingTargetAmount = fundingTargetAmount;
	}
	public int getFundingTargetRate() {
		return fundingTargetRate;
	}
	public void setFundingTargetRate(int fundingTargetRate) {
		this.fundingTargetRate = fundingTargetRate;
	}
	public Date getFundingTargetDate() {
		return fundingTargetDate;
	}
	public void setFundingTargetDate(Date fundingTargetDate) {
		this.fundingTargetDate = fundingTargetDate;
	}
	public Date getFundingRewardDeliveryDate() {
		return fundingRewardDeliveryDate;
	}
	public void setFundingRewardDeliveryDate(Date fundingRewardDeliveryDate) {
		this.fundingRewardDeliveryDate = fundingRewardDeliveryDate;
	}
	public int getFundingInvestmentProfitRate() {
		return fundingInvestmentProfitRate;
	}
	public void setFundingInvestmentProfitRate(int fundingInvestmentProfitRate) {
		this.fundingInvestmentProfitRate = fundingInvestmentProfitRate;
	}
	public int getFundingInvestmentPeriod() {
		return fundingInvestmentPeriod;
	}
	public void setFundingInvestmentPeriod(int fundingInvestmentPeriod) {
		this.fundingInvestmentPeriod = fundingInvestmentPeriod;
	}
	public int getFundingSuccessOrFailure() {
		return fundingSuccessOrFailure;
	}
	public void setFundingSuccessOrFailure(int fundingSuccessOrFailure) {
		this.fundingSuccessOrFailure = fundingSuccessOrFailure;
	}
	public int getFundingPeopleCount() {
		return fundingPeopleCount;
	}
	public void setFundingPeopleCount(int fundingPeopleCount) {
		this.fundingPeopleCount = fundingPeopleCount;
	}
	public int getFundingAdminPermit() {
		return fundingAdminPermit;
	}
	public void setFundingAdminPermit(int fundingAdminPermit) {
		this.fundingAdminPermit = fundingAdminPermit;
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
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
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
	public String getCompanyProfileImage() {
		return companyProfileImage;
	}
	public void setCompanyProfileImage(String companyProfileImage) {
		this.companyProfileImage = companyProfileImage;
	}
	public String getCompanyIntroduction() {
		return companyIntroduction;
	}
	public void setCompanyIntroduction(String companyIntroduction) {
		this.companyIntroduction = companyIntroduction;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public FundingGoods(int fundingCode, int fundingCategory, String fundingName, String fundingDescription,
			String fundingThumbnailImage, String fundingDetailImage, String fundingExplanationFile,
			String fundingBankName, String fundingBankDepositor, String fundingAccountNumber, int fundingAccountBalance,
			int fundingTargetAmount, int fundingTargetRate, Date fundingTargetDate, Date fundingRewardDeliveryDate,
			int fundingInvestmentProfitRate, int fundingInvestmentPeriod, int fundingSuccessOrFailure,
			int fundingPeopleCount, int fundingAdminPermit, String adminId, String companyId, int commentCount,
			int startRow, int endRow, String companyProfileImage, String companyIntroduction, String companyName) {
		super();
		this.fundingCode = fundingCode;
		this.fundingCategory = fundingCategory;
		this.fundingName = fundingName;
		this.fundingDescription = fundingDescription;
		this.fundingThumbnailImage = fundingThumbnailImage;
		this.fundingDetailImage = fundingDetailImage;
		this.fundingExplanationFile = fundingExplanationFile;
		this.fundingBankName = fundingBankName;
		this.fundingBankDepositor = fundingBankDepositor;
		this.fundingAccountNumber = fundingAccountNumber;
		this.fundingAccountBalance = fundingAccountBalance;
		this.fundingTargetAmount = fundingTargetAmount;
		this.fundingTargetRate = fundingTargetRate;
		this.fundingTargetDate = fundingTargetDate;
		this.fundingRewardDeliveryDate = fundingRewardDeliveryDate;
		this.fundingInvestmentProfitRate = fundingInvestmentProfitRate;
		this.fundingInvestmentPeriod = fundingInvestmentPeriod;
		this.fundingSuccessOrFailure = fundingSuccessOrFailure;
		this.fundingPeopleCount = fundingPeopleCount;
		this.fundingAdminPermit = fundingAdminPermit;
		this.adminId = adminId;
		this.companyId = companyId;
		this.commentCount = commentCount;
		this.startRow = startRow;
		this.endRow = endRow;
		this.companyProfileImage = companyProfileImage;
		this.companyIntroduction = companyIntroduction;
		this.companyName = companyName;
	}
	public FundingGoods() {
		super();
	}
	@Override
	public String toString() {
		return "FundingGoods [fundingCode=" + fundingCode + ", fundingCategory=" + fundingCategory + ", fundingName="
				+ fundingName + ", fundingDescription=" + fundingDescription + ", fundingThumbnailImage="
				+ fundingThumbnailImage + ", fundingDetailImage=" + fundingDetailImage + ", fundingExplanationFile="
				+ fundingExplanationFile + ", fundingBankName=" + fundingBankName + ", fundingBankDepositor="
				+ fundingBankDepositor + ", fundingAccountNumber=" + fundingAccountNumber + ", fundingAccountBalance="
				+ fundingAccountBalance + ", fundingTargetAmount=" + fundingTargetAmount + ", fundingTargetRate="
				+ fundingTargetRate + ", fundingTargetDate=" + fundingTargetDate + ", fundingRewardDeliveryDate="
				+ fundingRewardDeliveryDate + ", fundingInvestmentProfitRate=" + fundingInvestmentProfitRate
				+ ", fundingInvestmentPeriod=" + fundingInvestmentPeriod + ", fundingSuccessOrFailure="
				+ fundingSuccessOrFailure + ", fundingPeopleCount=" + fundingPeopleCount + ", fundingAdminPermit="
				+ fundingAdminPermit + ", adminId=" + adminId + ", companyId=" + companyId + ", commentCount="
				+ commentCount + ", startRow=" + startRow + ", endRow=" + endRow + ", companyProfileImage="
				+ companyProfileImage + ", companyIntroduction=" + companyIntroduction + ", companyName=" + companyName
				+ "]";
	}
	
	
	
	
	

}
