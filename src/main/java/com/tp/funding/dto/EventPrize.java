package com.tp.funding.dto;

public class EventPrize {
	
	private int eventPrizeNumber;   
	private String userId;               
	private int eventNumber;      
	
	// Users join
	private String userProfileImage;
	private String userName;
	// 이벤트 당첨된 유저아이디 값찾을 숫자
	private int searchNumUserId;
	public EventPrize() {
	}
	public EventPrize(int eventPrizeNumber, String userId, int eventNumber, String userProfileImage, String userName,
			int searchNumUserId) {
		this.eventPrizeNumber = eventPrizeNumber;
		this.userId = userId;
		this.eventNumber = eventNumber;
		this.userProfileImage = userProfileImage;
		this.userName = userName;
		this.searchNumUserId = searchNumUserId;
	}
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
	public int getSearchNumUserId() {
		return searchNumUserId;
	}
	public void setSearchNumUserId(int searchNumUserId) {
		this.searchNumUserId = searchNumUserId;
	}
	@Override
	public String toString() {
		return "EventPrize [eventPrizeNumber=" + eventPrizeNumber + ", userId=" + userId + ", eventNumber="
				+ eventNumber + ", userProfileImage=" + userProfileImage + ", userName=" + userName
				+ ", searchNumUserId=" + searchNumUserId + "]";
	}
}
