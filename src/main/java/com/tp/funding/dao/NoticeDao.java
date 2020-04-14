package com.tp.funding.dao;

import com.tp.funding.dto.Notice;

public interface NoticeDao {
	public int totNotice();
	public int noticeWrite(Notice notice);
	public Notice noticeDetail(int noticeNumber);
	public int noticeModify(Notice notice);
	public int noticeHitUp(Notice notice);
	public int noticeDelete(int noticeNumber);
}
