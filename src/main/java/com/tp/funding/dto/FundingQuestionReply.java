package com.tp.funding.dto;

import java.sql.Date;

public class FundingQuestionReply {
	
	private int fundingQuestionReplyNumber;  
	private String fundingQuestionReplyContent;
	private Date fundingQuestionReplyDate;    
	private int fundingQuestionNumber;             
	private String adminId;
	public int getFundingQuestionReplyNumber() {
		return fundingQuestionReplyNumber;
	}
	public void setFundingQuestionReplyNumber(int fundingQuestionReplyNumber) {
		this.fundingQuestionReplyNumber = fundingQuestionReplyNumber;
	}
	public String getFundingQuestionReplyContent() {
		return fundingQuestionReplyContent;
	}
	public void setFundingQuestionReplyContent(String fundingQuestionReplyContent) {
		this.fundingQuestionReplyContent = fundingQuestionReplyContent;
	}
	public Date getFundingQuestionReplyDate() {
		return fundingQuestionReplyDate;
	}
	public void setFundingQuestionReplyDate(Date fundingQuestionReplyDate) {
		this.fundingQuestionReplyDate = fundingQuestionReplyDate;
	}
	public int getFundingQuestionNumber() {
		return fundingQuestionNumber;
	}
	public void setFundingQuestionNumber(int fundingQuestionNumber) {
		this.fundingQuestionNumber = fundingQuestionNumber;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public FundingQuestionReply(int fundingQuestionReplyNumber, String fundingQuestionReplyContent,
			Date fundingQuestionReplyDate, int fundingQuestionNumber, String adminId) {
		super();
		this.fundingQuestionReplyNumber = fundingQuestionReplyNumber;
		this.fundingQuestionReplyContent = fundingQuestionReplyContent;
		this.fundingQuestionReplyDate = fundingQuestionReplyDate;
		this.fundingQuestionNumber = fundingQuestionNumber;
		this.adminId = adminId;
	}
	public FundingQuestionReply() {
		super();
	}
	@Override
	public String toString() {
		return "FundingQuestionReply [fundingQuestionReplyNumber=" + fundingQuestionReplyNumber
				+ ", fundingQuestionReplyContent=" + fundingQuestionReplyContent + ", fundingQuestionReplyDate="
				+ fundingQuestionReplyDate + ", fundingQuestionNumber=" + fundingQuestionNumber + ", adminId=" + adminId
				+ "]";
	}
	
	
	
}
