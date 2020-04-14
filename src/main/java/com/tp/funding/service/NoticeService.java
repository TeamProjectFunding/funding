package com.tp.funding.service;

import com.tp.funding.dto.Notice;

public interface NoticeService {
	public int totNotice();
	public int noticeWrite(Notice notice);
	public Notice noticeDetail(int noticeNumber);
	public int noticeModify(Notice notice);
	public int noticeHitUp(Notice notice);
	public int noticeDelete(int noticeNumber);
}
