package com.tp.funding.dao;

import java.util.List;

import com.tp.funding.dto.FundingQuestion;

public interface FundingQuestionDao {
	
	public List<FundingQuestion> fundingQuestionList(FundingQuestion fundingQuestion);
	
	public FundingQuestion fundingQuestionDetail(int fundingQuestionNumber);
	
	public int fundingQuestionWrite(FundingQuestion fundingQuestion);
	
}
