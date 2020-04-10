package com.tp.funding.dto;

import java.sql.Date;

public class EventReply {
	
	private int eventReplyNumber;        
	private String eventReplyContent;  
	private Date eventReplyDate;           
	private int eventNumber;               
	private String userId;            

	// paging
	private int startRow;
	private int endRow;
	
	
	// Users join
	private String userProfileImage;
	private String userName;
	public int getEventReplyNumber() {
		return eventReplyNumber;
	}
	public void setEventReplyNumber(int eventReplyNumber) {
		this.eventReplyNumber = eventReplyNumber;
	}
	public String getEventReplyContent() {
		return eventReplyContent;
	}
	public void setEventReplyContent(String eventReplyContent) {
		this.eventReplyContent = eventReplyContent;
	}
	public Date getEventReplyDate() {
		return eventReplyDate;
	}
	public void setEventReplyDate(Date eventReplyDate) {
		this.eventReplyDate = eventReplyDate;
	}
	public int getEventNumber() {
		return eventNumber;
	}
	public void setEventNumber(int eventNumber) {
		this.eventNumber = eventNumber;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
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
	public String getUserProfileImage() {
		return userProfileImage;
	}
	public void setUserProfileImage(String userProfileImage) {
		this.userProfileImage = userProfileImage;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public EventReply(int eventReplyNumber, String eventReplyContent, Date eventReplyDate, int eventNumber,
			String userId, int startRow, int endRow, String userProfileImage, String userName) {
		super();
		this.eventReplyNumber = eventReplyNumber;
		this.eventReplyContent = eventReplyContent;
		this.eventReplyDate = eventReplyDate;
		this.eventNumber = eventNumber;
		this.userId = userId;
		this.startRow = startRow;
		this.endRow = endRow;
		this.userProfileImage = userProfileImage;
		this.userName = userName;
	}
	public EventReply() {
		super();
	}
	@Override
	public String toString() {
		return "EventReply [eventReplyNumber=" + eventReplyNumber + ", eventReplyContent=" + eventReplyContent
				+ ", eventReplyDate=" + eventReplyDate + ", eventNumber=" + eventNumber + ", userId=" + userId
				+ ", startRow=" + startRow + ", endRow=" + endRow + ", userProfileImage=" + userProfileImage
				+ ", userName=" + userName + "]";
	}

	
	
	
	
}
