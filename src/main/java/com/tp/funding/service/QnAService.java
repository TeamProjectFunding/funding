package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.QnA;

public interface QnAService {
	public int qnAWrite(QnA qnA);
	public int qnAReplyWrite(QnA qnA);
	public QnA qnADetail(QnA qnA);
	public List<QnA> qnAList(QnA qnA);
	public int qnAHitUp(int qnANumber);
	public List<QnA> qnAAdminList();
	public int totQnA();
	public int totCntSearchQnA(QnA qnA);
	public int qnAModify(QnA qnA);
	public int qnAReplyExistUp(int qnANumber);
	public int getAnswerQnanumber(QnA qnA);
	public List<QnA> myQnaList(QnA qnA);
	public int myTotQna(String userId);
}
