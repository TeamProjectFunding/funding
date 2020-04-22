package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.Notice;
import com.tp.funding.dto.Notification;

public interface NoticeService {
	public int totNotice();
	public int totSearchList(Notice notice);
	public List<Notice> noticeList();
	public List<Notice> noticeListP(String pageNum);
	public List<Notice> noticeSearchList(String pageNum, Notice notice); 
	public int noticeWrite(Notice notice);
	public Notice noticeDetail(int noticeNumber);
	public int noticeModify(Notice notice);
	public int noticeHitUp(Notice notice);
	public int noticeDelete(int noticeNumber);
	
}
