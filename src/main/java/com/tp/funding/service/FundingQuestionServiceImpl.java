package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.FundingQuestionDao;
import com.tp.funding.dto.FundingQuestion;
import com.tp.funding.util.Paging;
@Service
public class FundingQuestionServiceImpl implements FundingQuestionService {

	@Autowired
	private FundingQuestionDao fundingQuestionDao;
	
	@Override
	public List<FundingQuestion> fundingQuestionList(String pageNum) {
		int fundingQuestionTotalCount = fundingQuestionDao.totfundingQuestion();
		Paging paging = new Paging(fundingQuestionTotalCount, pageNum, 5, 5);
		FundingQuestion fundingQuestion = new FundingQuestion();
		fundingQuestion.setStartRow(paging.getStartRow());
		fundingQuestion.setEndRow(paging.getEndRow());
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

	@Override
	public int totfundingQuestion() {
		return fundingQuestionDao.totfundingQuestion();
	}

}
