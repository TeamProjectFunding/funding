package com.tp.funding.dao;

import java.util.List;

import com.tp.funding.dto.QnA;

public interface QnADao {
	public int qnAWrite(QnA qnA);
	public int qnAReplyWrite(QnA qnA);
	public int qnADetail(QnA qnA);
	public List<QnA> qnAList(QnA qnA);
	public int qnAHitUp(int qnANumber);
}
