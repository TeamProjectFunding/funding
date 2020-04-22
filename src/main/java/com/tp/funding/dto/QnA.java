package com.tp.funding.dto;

import java.sql.Date;

public class QnA {
	private int qnANumber;
	private String qnATitle;
	private String qnAContent;
	private int qnAHit;
	private int qnAOriginalWriter;
	private int qnAGroup;
	private int qnARef;
	private int qnAIndent;
	private int qnAReplyExist;
	private Date qnADate;
	private String userId;
	private String companyId;
	private String adminId;

	// paging
	private int startRow;
	private int endRow;

	// writer
	private String writer;
	private String writerProfileImage;

	public QnA() {

	}

	public int getQnAReplyExist() {
		return qnAReplyExist;
	}

	public void setQnAReplyExist(int qnAReplyExist) {
		this.qnAReplyExist = qnAReplyExist;
	}

	public int getQnANumber() {
		return qnANumber;
	}

	public void setQnANumber(int qnANumber) {
		this.qnANumber = qnANumber;
	}

	public String getQnATitle() {
		return qnATitle;
	}

	public void setQnATitle(String qnATitle) {
		this.qnATitle = qnATitle;
	}

	public String getQnAContent() {
		return qnAContent;
	}

	public void setQnAContent(String qnAContent) {
		this.qnAContent = qnAContent;
	}

	public int getQnAHit() {
		return qnAHit;
	}

	public void setQnAHit(int qnAHit) {
		this.qnAHit = qnAHit;
	}

	public int getQnAOriginalWriter() {
		return qnAOriginalWriter;
	}

	public void setQnAOriginalWriter(int qnAOriginalWriter) {
		this.qnAOriginalWriter = qnAOriginalWriter;
	}

	public int getQnAGroup() {
		return qnAGroup;
	}

	public void setQnAGroup(int qnAGroup) {
		this.qnAGroup = qnAGroup;
	}

	public int getQnARef() {
		return qnARef;
	}

	public void setQnARef(int qnARef) {
		this.qnARef = qnARef;
	}

	public int getQnAIndent() {
		return qnAIndent;
	}

	public void setQnAIndent(int qnAIndent) {
		this.qnAIndent = qnAIndent;
	}

	public Date getQnADate() {
		return qnADate;
	}

	public void setQnADate(Date qnADate) {
		this.qnADate = qnADate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
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

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getWriterProfileImage() {
		return writerProfileImage;
	}

	public void setWriterProfileImage(String writerProfileImage) {
		this.writerProfileImage = writerProfileImage;
	}

	@Override
	public String toString() {
		return "QnA [qnANumber=" + qnANumber + ", qnATitle=" + qnATitle + ", qnAContent=" + qnAContent + ", qnAHit="
				+ qnAHit + ", qnAOriginalWriter=" + qnAOriginalWriter + ", qnAGroup=" + qnAGroup + ", qnARef=" + qnARef
				+ ", qnAIndent=" + qnAIndent + ", qnAReplyExist=" + qnAReplyExist + ", qnADate=" + qnADate + ", userId="
				+ userId + ", companyId=" + companyId + ", adminId=" + adminId + ", startRow=" + startRow + ", endRow="
				+ endRow + ", writer=" + writer + ", writerProfileImage=" + writerProfileImage + "]";
	}

	

}
