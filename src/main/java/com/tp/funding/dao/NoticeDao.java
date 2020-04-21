package com.tp.funding.dao;

import java.util.List;

import com.tp.funding.dto.Notice;

public interface NoticeDao {
	public int totNotice();
	public int totSearchList(Notice notice);
	public List<Notice> noticeList();
	public List<Notice> noticeListP(Notice notice); 
	public List<Notice> noticeSearchList(Notice notice);
	public int noticeWrite(Notice notice);
	public Notice noticeDetail(int noticeNumber);
	public int noticeModify(Notice notice);
	public int noticeHitUp(Notice notice);
	public int noticeDelete(int noticeNumber);
}
