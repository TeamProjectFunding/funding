package com.tp.funding.dto;

import java.sql.Date;

public class DepositAndWithdrawal {
	private int depositAndWithdrawalNumber;
	private int dNWType; // 0 입금 1 출금
	private int dNWAmount; //입출금 금액
	private int dNWBalance;
	private String dNWContent;
	private Date dNWDate;
	private String companyId;
	private String userId;
	private int rewardCode;
	
	//JOIN해서 출력
	private int investmentReceiveCount; //이자 받은 횟수
	private int fundingInvestmentPeriod; //총 이자 받는 기간
	private int rewardInterst; //이자율
	
	public int getRewardCode() {
		return rewardCode;
	}
	public void setRewardCode(int rewardCode) {
		this.rewardCode = rewardCode;
	}
	public int getInvestmentReceiveCount() {
		return investmentReceiveCount;
	}
	public void setInvestmentReceiveCount(int investmentReceiveCount) {
		this.investmentReceiveCount = investmentReceiveCount;
	}
	public int getFundingInvestmentPeriod() {
		return fundingInvestmentPeriod;
	}
	public void setFundingInvestmentPeriod(int fundingInvestmentPeriod) {
		this.fundingInvestmentPeriod = fundingInvestmentPeriod;
	}
	public int getRewardInterst() {
		return rewardInterst;
	}
	public void setRewardInterst(int rewardInterst) {
		this.rewardInterst = rewardInterst;
	}
	public int getDepositAndWithdrawalNumber() {
		return depositAndWithdrawalNumber;
	}
	public void setDepositAndWithdrawalNumber(int depositAndWithdrawalNumber) {
		this.depositAndWithdrawalNumber = depositAndWithdrawalNumber;
	}
	public int getdNWType() {
		return dNWType;
	}
	public void setdNWType(int dNWType) {
		this.dNWType = dNWType;
	}
	public int getdNWAmount() {
		return dNWAmount;
	}
	public void setdNWAmount(int dNWAmount) {
		this.dNWAmount = dNWAmount;
	}
	public int getdNWBalance() {
		return dNWBalance;
	}
	public void setdNWBalance(int dNWBalance) {
		this.dNWBalance = dNWBalance;
	}
	public String getdNWContent() {
		return dNWContent;
	}
	public void setdNWContent(String dNWContent) {
		this.dNWContent = dNWContent;
	}
	public Date getdNWDate() {
		return dNWDate;
	}
	public void setdNWDate(Date dNWDate) {
		this.dNWDate = dNWDate;
	}
	public String getCompanyId() {
		return companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public DepositAndWithdrawal() {
		super();
	}
	@Override
	public String toString() {
		return "DepositAndWithdrawal [depositAndWithdrawalNumber=" + depositAndWithdrawalNumber + ", dNWType=" + dNWType
				+ ", dNWAmount=" + dNWAmount + ", dNWBalance=" + dNWBalance + ", dNWContent=" + dNWContent
				+ ", dNWDate=" + dNWDate + ", companyId=" + companyId + ", userId=" + userId + ", rewardCode="
				+ rewardCode + ", investmentReceiveCount=" + investmentReceiveCount + ", fundingInvestmentPeriod="
				+ fundingInvestmentPeriod + ", rewardInterst=" + rewardInterst + "]";
	}
	
	
	
	
}
