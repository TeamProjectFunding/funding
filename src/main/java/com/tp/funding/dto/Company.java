package com.tp.funding.dto;

import java.sql.Date;

public class Company {
	
	private String companyId;             
	private String companyPassword;
	private String companyBusinessNumber;
	private Date companyJoinDate;
	private String companyProfileImage;    
	private String companyIntroduction;     
	private Date companyJoinDate;           
	private String companyName;           
	private String companyPhone;          
	private String companyAddressBasic;    
	private String companyAddressDetail;  
	private String companyBankName;       
	private String companyBankDepositor;  
	private String companyAccountNumber;   
	private int companyAccountBalance;   
	private int companyInFunding;           
	private int companyOutSite;	
	private String companyBusinessNumber;
	
	private int changeAccountBalance;
	// 페이징
	private int startRow;
	private int endRow;
	
	// join해서 쓸 것
	private int notificationCount;

	public Company() {
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public String getCompanyPassword() {
		return companyPassword;
	}

	public void setCompanyPassword(String companyPassword) {
		this.companyPassword = companyPassword;
	}

	public String getCompanyBusinessNumber() {
		return companyBusinessNumber;
	}

	public void setCompanyBusinessNumber(String companyBusinessNumber) {
		this.companyBusinessNumber = companyBusinessNumber;
	}

	public Date getCompanyJoinDate() {
		return companyJoinDate;
	}

	public void setCompanyJoinDate(Date companyJoinDate) {
		this.companyJoinDate = companyJoinDate;
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

	public Date getCompanyJoinDate() {
		return companyJoinDate;
	}

	public void setCompanyJoinDate(Date companyJoinDate) {
		this.companyJoinDate = companyJoinDate;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCompanyPhone() {
		return companyPhone;
	}

	public void setCompanyPhone(String companyPhone) {
		this.companyPhone = companyPhone;
	}

	public String getCompanyAddressBasic() {
		return companyAddressBasic;
	}

	public void setCompanyAddressBasic(String companyAddressBasic) {
		this.companyAddressBasic = companyAddressBasic;
	}

	public String getCompanyAddressDetail() {
		return companyAddressDetail;
	}

	public void setCompanyAddressDetail(String companyAddressDetail) {
		this.companyAddressDetail = companyAddressDetail;
	}

	public String getCompanyBankName() {
		return companyBankName;
	}

	public void setCompanyBankName(String companyBankName) {
		this.companyBankName = companyBankName;
	}

	public String getCompanyBankDepositor() {
		return companyBankDepositor;
	}

	public void setCompanyBankDepositor(String companyBankDepositor) {
		this.companyBankDepositor = companyBankDepositor;
	}

	public String getCompanyAccountNumber() {
		return companyAccountNumber;
	}

	public void setCompanyAccountNumber(String companyAccountNumber) {
		this.companyAccountNumber = companyAccountNumber;
	}

	public int getCompanyAccountBalance() {
		return companyAccountBalance;
	}

	public void setCompanyAccountBalance(int companyAccountBalance) {
		this.companyAccountBalance = companyAccountBalance;
	}

	public int getCompanyInFunding() {
		return companyInFunding;
	}

	public void setCompanyInFunding(int companyInFunding) {
		this.companyInFunding = companyInFunding;
	}

	public int getCompanyOutSite() {
		return companyOutSite;
	}

	public void setCompanyOutSite(int companyOutSite) {
		this.companyOutSite = companyOutSite;
	}

	public String getCompanyBusinessNumber() {
		return companyBusinessNumber;
	}

	public void setCompanyBusinessNumber(String companyBusinessNumber) {
		this.companyBusinessNumber = companyBusinessNumber;
	}

	public int getChangeAccountBalance() {
		return changeAccountBalance;
	}

	public void setChangeAccountBalance(int changeAccountBalance) {
		this.changeAccountBalance = changeAccountBalance;
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

	public int getNotificationCount() {
		return notificationCount;
	}

	public void setNotificationCount(int notificationCount) {
		this.notificationCount = notificationCount;
	}


	@Override
	public String toString() {
		return "Company [companyId=" + companyId + ", companyPassword=" + companyPassword + ", companyBusinessNumber="
				+ companyBusinessNumber + ", companyJoinDate=" + companyJoinDate + ", companyProfileImage="
				+ companyProfileImage + ", companyIntroduction=" + companyIntroduction + ", companyEmail="
				+ companyEmail + ", companyName=" + companyName + ", companyPhone=" + companyPhone
				+ ", companyAddressBasic=" + companyAddressBasic + ", companyAddressDetail=" + companyAddressDetail
				+ ", companyBankName=" + companyBankName + ", companyBankDepositor=" + companyBankDepositor
				+ ", companyAccountNumber=" + companyAccountNumber + ", companyAccountBalance=" + companyAccountBalance
				+ ", companyInFunding=" + companyInFunding + ", companyOutSite=" + companyOutSite
				+ ", changeAccountBalance=" + changeAccountBalance + ", startRow=" + startRow + ", endRow=" + endRow
				+ ", notificationCount=" + notificationCount + "]";
	}
}
