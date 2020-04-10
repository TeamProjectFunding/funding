package com.tp.funding.dto;

import java.sql.Date;

public class Notice {

	private int noticeNumber;
	private String noticeTilte;
	private String noticeContent;
	private Date noticeDate;
	private int noticeHit;
	private String adminId;

	// paging
	private int startRow;
	private int endRow;
	public int getNoticeNumber() {
		return noticeNumber;
	}
	public void setNoticeNumber(int noticeNumber) {
		this.noticeNumber = noticeNumber;
	}
	public String getNoticeTilte() {
		return noticeTilte;
	}
	public void setNoticeTilte(String noticeTilte) {
		this.noticeTilte = noticeTilte;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public Date getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	public int getNoticeHit() {
		return noticeHit;
	}
	public void setNoticeHit(int noticeHit) {
		this.noticeHit = noticeHit;
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
	public Notice(int noticeNumber, String noticeTilte, String noticeContent, Date noticeDate, int noticeHit,
			String adminId, int startRow, int endRow) {
		super();
		this.noticeNumber = noticeNumber;
		this.noticeTilte = noticeTilte;
		this.noticeContent = noticeContent;
		this.noticeDate = noticeDate;
		this.noticeHit = noticeHit;
		this.adminId = adminId;
		this.startRow = startRow;
		this.endRow = endRow;
	}
	public Notice() {
		super();
	}
	@Override
	public String toString() {
		return "Notice [noticeNumber=" + noticeNumber + ", noticeTilte=" + noticeTilte + ", noticeContent="
				+ noticeContent + ", noticeDate=" + noticeDate + ", noticeHit=" + noticeHit + ", adminId=" + adminId
				+ ", startRow=" + startRow + ", endRow=" + endRow + "]";
	}
	
	

}
