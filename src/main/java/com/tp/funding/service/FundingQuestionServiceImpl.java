package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.FundingQuestionDao;
import com.tp.funding.dto.FundingQuestion;
@Service
public class FundingQuestionServiceImpl implements FundingQuestionService {

	@Autowired
	private FundingQuestionDao fundingQuestionDao;
	
	@Override
	public List<FundingQuestion> fundingQuestionList(FundingQuestion fundingQuestion) {
		return fundingQuestionDao.fundingQuestionList(fundingQuestion);
	}

	@Override
	public FundingQuestion fundingQuestionDetail(int fundingQuestionNumber) {
		return fundingQuestionDao.fundingQuestionDetail(fundingQuestionNumber);
	}

	@Override
	public int fundingQuestionWrite(FundingQuestion fundingQuestion) {
		return fundingQuestionDao.fundingQuestionWrite(fundingQuestion);
	}

}
