package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.QnA;

public interface QnAService {
	public int qnAWrite(QnA qnA);
	public int qnAReplyWrite(QnA qnA);
	public int qnADetail(QnA qnA);
	public List<QnA> qnAList(QnA qnA);
	public int qnAHitUp(int qnANumber);
	public List<QnA> qnAAdminList();
}
