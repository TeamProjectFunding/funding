package com.tp.funding.dto;

public class EventPrize {
	
	private int eventPrizeNumber;   
	private String userId;               
	private int eventNumber;      
	
	// Users join
	private String userProfileImage;
	private String userName;
	public int getEventPrizeNumber() {
		return eventPrizeNumber;
	}
	public void setEventPrizeNumber(int eventPrizeNumber) {
		this.eventPrizeNumber = eventPrizeNumber;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getEventNumber() {
		return eventNumber;
	}
	public void setEventNumber(int eventNumber) {
		this.eventNumber = eventNumber;
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
	public EventPrize() {
		super();
	}
	@Override
	public String toString() {
		return "EventPrize [eventPrizeNumber=" + eventPrizeNumber + ", userId=" + userId + ", eventNumber="
				+ eventNumber + ", userProfileImage=" + userProfileImage + ", userName=" + userName + "]";
	}
	public EventPrize(int eventPrizeNumber, String userId, int eventNumber, String userProfileImage, String userName) {
		super();
		this.eventPrizeNumber = eventPrizeNumber;
		this.userId = userId;
		this.eventNumber = eventNumber;
		this.userProfileImage = userProfileImage;
		this.userName = userName;
	}
	
	
}
