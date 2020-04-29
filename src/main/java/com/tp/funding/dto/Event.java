package com.tp.funding.dto;

import java.sql.Date;

public class Event {

	private int eventNumber;                 
	private String eventTilte;               
	private String eventContent;             
	private String eventThumbnailImage;       
	private String eventDetailImage;          
	private String eventProductName;           
	private String eventProductImage;        
	private int eventPrizeCount;             
	private int eventParticipateCount;     
	private int eventHit;                 
	private Date eventStartDate;                    
	private Date eventEndDate;                       
	private Date eventProductDeliveryDate;           
	private String adminId;
	private int eventClose;
	
	private int eventReplyCount; //이벤트 답글 갯수
	//검색시 사용
	private String doingEventSearchWord;
	// paging
	private int startRow;
	private int endRow;
	public Event() {
	}
	public Event(int eventNumber, String eventTilte, String eventContent, String eventThumbnailImage,
			String eventDetailImage, String eventProductName, String eventProductImage, int eventPrizeCount,
			int eventParticipateCount, int eventHit, Date eventStartDate, Date eventEndDate,
			Date eventProductDeliveryDate, String adminId, int eventClose, int eventReplyCount,
			String doingEventSearchWord, int startRow, int endRow) {
		super();
		this.eventNumber = eventNumber;
		this.eventTilte = eventTilte;
		this.eventContent = eventContent;
		this.eventThumbnailImage = eventThumbnailImage;
		this.eventDetailImage = eventDetailImage;
		this.eventProductName = eventProductName;
		this.eventProductImage = eventProductImage;
		this.eventPrizeCount = eventPrizeCount;
		this.eventParticipateCount = eventParticipateCount;
		this.eventHit = eventHit;
		this.eventStartDate = eventStartDate;
		this.eventEndDate = eventEndDate;
		this.eventProductDeliveryDate = eventProductDeliveryDate;
		this.adminId = adminId;
		this.eventClose = eventClose;
		this.eventReplyCount = eventReplyCount;
		this.doingEventSearchWord = doingEventSearchWord;
		this.startRow = startRow;
		this.endRow = endRow;
	}
	public int getEventNumber() {
		return eventNumber;
	}
	public void setEventNumber(int eventNumber) {
		this.eventNumber = eventNumber;
	}
	public String getEventTilte() {
		return eventTilte;
	}
	public void setEventTilte(String eventTilte) {
		this.eventTilte = eventTilte;
	}
	public String getEventContent() {
		return eventContent;
	}
	public void setEventContent(String eventContent) {
		this.eventContent = eventContent;
	}
	public String getEventThumbnailImage() {
		return eventThumbnailImage;
	}
	public void setEventThumbnailImage(String eventThumbnailImage) {
		this.eventThumbnailImage = eventThumbnailImage;
	}
	public String getEventDetailImage() {
		return eventDetailImage;
	}
	public void setEventDetailImage(String eventDetailImage) {
		this.eventDetailImage = eventDetailImage;
	}
	public String getEventProductName() {
		return eventProductName;
	}
	public void setEventProductName(String eventProductName) {
		this.eventProductName = eventProductName;
	}
	public String getEventProductImage() {
		return eventProductImage;
	}
	public void setEventProductImage(String eventProductImage) {
		this.eventProductImage = eventProductImage;
	}
	public int getEventPrizeCount() {
		return eventPrizeCount;
	}
	public void setEventPrizeCount(int eventPrizeCount) {
		this.eventPrizeCount = eventPrizeCount;
	}
	public int getEventParticipateCount() {
		return eventParticipateCount;
	}
	public void setEventParticipateCount(int eventParticipateCount) {
		this.eventParticipateCount = eventParticipateCount;
	}
	public int getEventHit() {
		return eventHit;
	}
	public void setEventHit(int eventHit) {
		this.eventHit = eventHit;
	}
	public Date getEventStartDate() {
		return eventStartDate;
	}
	public void setEventStartDate(Date eventStartDate) {
		this.eventStartDate = eventStartDate;
	}
	public Date getEventEndDate() {
		return eventEndDate;
	}
	public void setEventEndDate(Date eventEndDate) {
		this.eventEndDate = eventEndDate;
	}
	public Date getEventProductDeliveryDate() {
		return eventProductDeliveryDate;
	}
	public void setEventProductDeliveryDate(Date eventProductDeliveryDate) {
		this.eventProductDeliveryDate = eventProductDeliveryDate;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public int getEventClose() {
		return eventClose;
	}
	public void setEventClose(int eventClose) {
		this.eventClose = eventClose;
	}
	public int getEventReplyCount() {
		return eventReplyCount;
	}
	public void setEventReplyCount(int eventReplyCount) {
		this.eventReplyCount = eventReplyCount;
	}
	public String getDoingEventSearchWord() {
		return doingEventSearchWord;
	}
	public void setDoingEventSearchWord(String doingEventSearchWord) {
		this.doingEventSearchWord = doingEventSearchWord;
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
	@Override
	public String toString() {
		return "Event [eventNumber=" + eventNumber + ", eventTilte=" + eventTilte + ", eventContent=" + eventContent
				+ ", eventThumbnailImage=" + eventThumbnailImage + ", eventDetailImage=" + eventDetailImage
				+ ", eventProductName=" + eventProductName + ", eventProductImage=" + eventProductImage
				+ ", eventPrizeCount=" + eventPrizeCount + ", eventParticipateCount=" + eventParticipateCount
				+ ", eventHit=" + eventHit + ", eventStartDate=" + eventStartDate + ", eventEndDate=" + eventEndDate
				+ ", eventProductDeliveryDate=" + eventProductDeliveryDate + ", adminId=" + adminId + ", eventClose="
				+ eventClose + ", eventReplyCount=" + eventReplyCount + ", doingEventSearchWord=" + doingEventSearchWord
				+ ", startRow=" + startRow + ", endRow=" + endRow + "]";
	}
	
	
}
