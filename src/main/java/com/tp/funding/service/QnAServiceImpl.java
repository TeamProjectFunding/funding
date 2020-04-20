package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.QnADao;
import com.tp.funding.dto.QnA;
import com.tp.funding.util.Paging;
@Service
public class QnAServiceImpl implements QnAService {
	@Autowired
	private QnADao qnADao;
	@Override
	public int qnAWrite(QnA qnA) {
		return qnADao.qnAWrite(qnA);
	}

	@Override
	public int qnAReplyWrite(QnA qnA) {
		return qnADao.qnAReplyWrite(qnA);
	}

	@Override
	public int qnADetail(QnA qnA) {
		return qnADao.qnADetail(qnA);
	}

	@Override
	public List<QnA> qnAList(String pageNum) {//페이징
		int QnATotalCount = qnADao.totQnA();
		Paging paging = new Paging(QnATotalCount, pageNum, 5, 5);
		QnA qna = new QnA();
		qna.setStartRow(paging.getStartRow());
		qna.setEndRow(paging.getEndRow());
		return qnADao.qnAList(qna);
	}

	@Override
	public int qnAHitUp(int qnANumber) {
		return qnADao.qnAHitUp(qnANumber);
	}

	@Override
	public List<QnA> qnAAdminList() {
		return qnADao.qnAAdminList();
	}

	@Override
	public int totQnA() {
		return qnADao.totQnA();
	}

}
