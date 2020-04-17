package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.Notice;

public interface NoticeService {
	public int totNotice();
	public List<Notice> noticeList();
	public int noticeWrite(Notice notice);
	public Notice noticeDetail(int noticeNumber);
	public int noticeModify(Notice notice);
	public int noticeHitUp(Notice notice);
	public int noticeDelete(int noticeNumber);
}
