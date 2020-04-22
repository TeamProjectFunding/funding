package com.tp.funding.dto;

import java.sql.Date;

public class Reward {
	
	private int rewardCode;                  
	private String rewardName;                
	private int rewardCondition;            
	private int rewardGrade;               
	private String rewardImage;              
	private Date fundingRewardDeliveryDate;       
	private int rewardInterst;             
	private int fundingInvestmentPeriod;   
	private int investmentReceiveCount;    
	private Date LastInterestReceivedDate; // 최근 이자받은 날
	private int fundingCode;
	//paging
		private int startRow;
		private int endRow;
	
	// join해서 출력
	private String fundingName;
	private Date fundingTargetDate;
	private String fundingThumbnailImage;
	
	// 투자 원금 환불일 서브쿼리
	private Date investmentMaturityDate;
	
	
	
	public Date getInvestmentMaturityDate() {
		return investmentMaturityDate;
	}
	public void setInvestmentMaturityDate(Date investmentMaturityDate) {
		this.investmentMaturityDate = investmentMaturityDate;
	}
	public Date getLastInterestReceivedDate() {
		return LastInterestReceivedDate;
	}
	public void setLastInterestReceivedDate(Date lastInterestReceivedDate) {
		LastInterestReceivedDate = lastInterestReceivedDate;
	}
	public int getRewardCode() {
		return rewardCode;
	}
	public void setRewardCode(int rewardCode) {
		this.rewardCode = rewardCode;
	}
	public String getRewardName() {
		return rewardName;
	}
	public void setRewardName(String rewardName) {
		this.rewardName = rewardName;
	}
	public int getRewardCondition() {
		return rewardCondition;
	}
	public void setRewardCondition(int rewardCondition) {
		this.rewardCondition = rewardCondition;
	}
	public int getRewardGrade() {
		return rewardGrade;
	}
	public void setRewardGrade(int rewardGrade) {
		this.rewardGrade = rewardGrade;
	}
	public String getRewardImage() {
		return rewardImage;
	}
	public void setRewardImage(String rewardImage) {
		this.rewardImage = rewardImage;
	}
	public Date getFundingRewardDeliveryDate() {
		return fundingRewardDeliveryDate;
	}
	public void setFundingRewardDeliveryDate(Date fundingRewardDeliveryDate) {
		this.fundingRewardDeliveryDate = fundingRewardDeliveryDate;
	}
	public int getRewardInterst() {
		return rewardInterst;
	}
	public void setRewardInterst(int rewardInterst) {
		this.rewardInterst = rewardInterst;
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
	public String getFundingName() {
		return fundingName;
	}
	public void setFundingName(String fundingName) {
		this.fundingName = fundingName;
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
	
	public Reward() {
		super();
	}
	@Override
	public String toString() {
		return "Reward [rewardCode=" + rewardCode + ", rewardName=" + rewardName + ", rewardCondition="
				+ rewardCondition + ", rewardGrade=" + rewardGrade + ", rewardImage=" + rewardImage
				+ ", fundingRewardDeliveryDate=" + fundingRewardDeliveryDate + ", rewardInterst=" + rewardInterst
				+ ", fundingInvestmentPeriod=" + fundingInvestmentPeriod + ", investmentReceiveCount="
				+ investmentReceiveCount + ", LastInterestReceivedDate=" + LastInterestReceivedDate + ", fundingCode="
				+ fundingCode + ", startRow=" + startRow + ", endRow=" + endRow + ", fundingName=" + fundingName
				+ ", fundingTargetDate=" + fundingTargetDate + ", fundingThumbnailImage=" + fundingThumbnailImage + "]";
	}
	
	
	
	
}
