package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.NoticeDao;
import com.tp.funding.dto.Notice;
import com.tp.funding.util.Paging;
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

	@Override
	public List<Notice> noticeListP(String pageNum) {
		int noticeTotalCount = noticeDao.totNotice();
		Paging paging = new Paging(noticeTotalCount, pageNum, 5, 5);
		Notice notice = new Notice();
		notice.setStartRow(paging.getStartRow());
		notice.setEndRow(paging.getEndRow());
		return noticeDao.noticeListP(notice);
	}

	@Override
	public int totSearchList(Notice notice) {
		return noticeDao.totSearchList(notice);
	}

	@Override
	public List<Notice> noticeSearchList(String pageNum, Notice notice) {
		int noticeTotalCount = noticeDao.totSearchList(notice);
		Paging paging = new Paging(noticeTotalCount, pageNum, 5, 5);
		notice.setStartRow(paging.getStartRow());
		notice.setEndRow(paging.getEndRow());
		return noticeDao.noticeSearchList(notice);
	}

}
