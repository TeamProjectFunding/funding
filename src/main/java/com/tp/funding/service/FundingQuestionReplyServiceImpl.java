package com.tp.funding.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.FundingQuestionReplyDao;
import com.tp.funding.dto.FundingQuestion;
@Service
public class FundingQuestionReplyServiceImpl implements FundingQuestionReplyService {

	@Autowired
	private FundingQuestionReplyDao fundingQuestionReplyDao;
	
	
	@Override
	public FundingQuestion fundingQuestionReplyDetail(int fundingQuestionReplyNumber) {
		return fundingQuestionReplyDao.fundingQuestionReplyDetail(fundingQuestionReplyNumber);
	}

	@Override
	public int fundingQuestionReplyWrite(FundingQuestion fundingQuestion) {
		return fundingQuestionReplyDao.fundingQuestionReplyWrite(fundingQuestion);
	}

}
