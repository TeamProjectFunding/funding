package com.tp.funding.dao;

import com.tp.funding.dto.FundingQuestion;

public interface FundingQuestionReplyDao {
	
	public FundingQuestion fundingQuestionReplyDetail(int fundingQuestionReplyNumber);
	
	public int fundingQuestionReplyWrite(FundingQuestion fundingQuestion);
	
}
