package com.tp.funding.dto;

import java.sql.Date;

public class FundingNews {
	private int fundingNewsNumber;     
	private String fundingNewsTitle;    
	private String fundingNewsContent; 
	private Date fundingNewsDate;            
	private String fundingNewsImage;  
	private int fundingCode;        
	private String companyId;
	
	//paging
	private int startRow;
	private int endRow;
	public int getFundingNewsNumber() {
		return fundingNewsNumber;
	}
	public void setFundingNewsNumber(int fundingNewsNumber) {
		this.fundingNewsNumber = fundingNewsNumber;
	}
	public String getFundingNewsTitle() {
		return fundingNewsTitle;
	}
	public void setFundingNewsTitle(String fundingNewsTitle) {
		this.fundingNewsTitle = fundingNewsTitle;
	}
	public String getFundingNewsContent() {
		return fundingNewsContent;
	}
	public void setFundingNewsContent(String fundingNewsContent) {
		this.fundingNewsContent = fundingNewsContent;
	}
	public Date getFundingNewsDate() {
		return fundingNewsDate;
	}
	public void setFundingNewsDate(Date fundingNewsDate) {
		this.fundingNewsDate = fundingNewsDate;
	}
	public String getFundingNewsImage() {
		return fundingNewsImage;
	}
	public void setFundingNewsImage(String fundingNewsImage) {
		this.fundingNewsImage = fundingNewsImage;
	}
	public int getFundingCode() {
		return fundingCode;
	}
	public void setFundingCode(int fundingCode) {
		this.fundingCode = fundingCode;
	}
	public String getCompanyId() {
		return companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
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
	public FundingNews() {
		super();
	}
	@Override
	public String toString() {
		return "FundingNews [fundingNewsNumber=" + fundingNewsNumber + ", fundingNewsTitle=" + fundingNewsTitle
				+ ", fundingNewsContent=" + fundingNewsContent + ", fundingNewsDate=" + fundingNewsDate
				+ ", fundingNewsImage=" + fundingNewsImage + ", fundingCode=" + fundingCode + ", companyId=" + companyId
				+ ", startRow=" + startRow + ", endRow=" + endRow + "]";
	}
	
	
	
	
}
