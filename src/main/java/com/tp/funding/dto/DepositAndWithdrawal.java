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
				+ ", dNWDate=" + dNWDate + ", companyId=" + companyId + ", userId=" + userId + "]";
	}
	
	
	
}
