package com.tp.funding.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.FundingQuestionReplyDao;
import com.tp.funding.dto.FundingQuestion;
import com.tp.funding.dto.FundingQuestionReply;
@Service
public class FundingQuestionReplyServiceImpl implements FundingQuestionReplyService {

	@Autowired
	private FundingQuestionReplyDao fundingQuestionReplyDao;
	
	
	@Override
	public FundingQuestion fundingQuestionReplyDetail(int fundingQuestionReplyNumber) {
		return fundingQuestionReplyDao.fundingQuestionReplyDetail(fundingQuestionReplyNumber);
	}

	@Override
	public int fundingQuestionReplyWrite(FundingQuestionReply fundingQuestionReply) {
		return fundingQuestionReplyDao.fundingQuestionReplyWrite(fundingQuestionReply);
	}

}
