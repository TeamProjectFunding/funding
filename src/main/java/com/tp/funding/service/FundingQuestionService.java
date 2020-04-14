package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.FundingQuestion;

public interface FundingQuestionService {
	
	public List<FundingQuestion> fundingQuestionList(FundingQuestion fundingQuestion);
	
	public FundingQuestion fundingQuestionDetail(int fundingQuestionNumber);
	
	public int fundingQuestionWrite(FundingQuestion fundingQuestion);
	
}
