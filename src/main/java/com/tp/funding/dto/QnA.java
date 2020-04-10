package com.tp.funding.dto;

import java.sql.Date;

public class QnA {
	private int qnANumber;
	private String qnATilte;
	private String qnAContent;
	private int qnAHit;
	private int qnAOriginalWriter;
	private int qnAGroup;
	private int qnARef;
	private int qnAIndent;
	private Date qnADate;
	private String userId;
	private String companyId;
	private String adminId;
	
	
	//paging
		private int startRow;
		private int endRow;
		
	//UserJoin
	private String userName;
	private String userProfileImage;
	
	//Company
	//회사이름, 회사 프로필이미지 
	private String companyProfileImage;
	private String companyName;

	//AdminId
	private String adminName;

	public int getQnANumber() {
		return qnANumber;
	}

	public void setQnANumber(int qnANumber) {
		this.qnANumber = qnANumber;
	}

	public String getQnATilte() {
		return qnATilte;
	}

	public void setQnATilte(String qnATilte) {
		this.qnATilte = qnATilte;
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

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserProfileImage() {
		return userProfileImage;
	}

	public void setUserProfileImage(String userProfileImage) {
		this.userProfileImage = userProfileImage;
	}

	public String getCompanyProfileImage() {
		return companyProfileImage;
	}

	public void setCompanyProfileImage(String companyProfileImage) {
		this.companyProfileImage = companyProfileImage;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public QnA(int qnANumber, String qnATilte, String qnAContent, int qnAHit, int qnAOriginalWriter, int qnAGroup,
			int qnARef, int qnAIndent, Date qnADate, String userId, String companyId, String adminId, int startRow,
			int endRow, String userName, String userProfileImage, String companyProfileImage, String companyName,
			String adminName) {
		super();
		this.qnANumber = qnANumber;
		this.qnATilte = qnATilte;
		this.qnAContent = qnAContent;
		this.qnAHit = qnAHit;
		this.qnAOriginalWriter = qnAOriginalWriter;
		this.qnAGroup = qnAGroup;
		this.qnARef = qnARef;
		this.qnAIndent = qnAIndent;
		this.qnADate = qnADate;
		this.userId = userId;
		this.companyId = companyId;
		this.adminId = adminId;
		this.startRow = startRow;
		this.endRow = endRow;
		this.userName = userName;
		this.userProfileImage = userProfileImage;
		this.companyProfileImage = companyProfileImage;
		this.companyName = companyName;
		this.adminName = adminName;
	}

	public QnA() {
		super();
	}

	@Override
	public String toString() {
		return "QnA [qnANumber=" + qnANumber + ", qnATilte=" + qnATilte + ", qnAContent=" + qnAContent + ", qnAHit="
				+ qnAHit + ", qnAOriginalWriter=" + qnAOriginalWriter + ", qnAGroup=" + qnAGroup + ", qnARef=" + qnARef
				+ ", qnAIndent=" + qnAIndent + ", qnADate=" + qnADate + ", userId=" + userId + ", companyId="
				+ companyId + ", adminId=" + adminId + ", startRow=" + startRow + ", endRow=" + endRow + ", userName="
				+ userName + ", userProfileImage=" + userProfileImage + ", companyProfileImage=" + companyProfileImage
				+ ", companyName=" + companyName + ", adminName=" + adminName + "]";
	}
	
	
}
