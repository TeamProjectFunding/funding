package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.NoticeDao;
import com.tp.funding.dto.Notice;
@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeDao noticeDao; 
	@Override
	public int totNotice() {
		return noticeDao.totNotice();
	}

	@Override
	public int noticeWrite(Notice notice) {
		return noticeDao.noticeWrite(notice);
	}

	@Override
	public Notice noticeDetail(int noticeNumber) {
		return noticeDao.noticeDetail(noticeNumber);
	}

	@Override
	public int noticeModify(Notice notice) {
		return noticeDao.noticeModify(notice);
	}

	@Override
	public int noticeHitUp(Notice notice) {
		return noticeDao.noticeHitUp(notice);
	}

	@Override
	public int noticeDelete(int noticeNumber) {
		return noticeDao.noticeDelete(noticeNumber);
	}

	@Override
	public List<Notice> noticeList() {
		return noticeDao.noticeList();
	}

}
