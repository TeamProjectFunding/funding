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
	public Notification(int notificationNumber, String notificationContent, Date notificationDate, int notificationRead,
			String userId, String adminId, String companyId) {
		super();
		this.notificationNumber = notificationNumber;
		this.notificationContent = notificationContent;
		this.notificationDate = notificationDate;
		this.notificationRead = notificationRead;
		this.userId = userId;
		this.adminId = adminId;
		this.companyId = companyId;
	}
	public Notification() {
		super();
	}
	@Override
	public String toString() {
		return "Notification [notificationNumber=" + notificationNumber + ", notificationContent=" + notificationContent
				+ ", notificationDate=" + notificationDate + ", notificationRead=" + notificationRead + ", userId="
				+ userId + ", adminId=" + adminId + ", companyId=" + companyId + "]";
	}
	
	
	
	
	
}
