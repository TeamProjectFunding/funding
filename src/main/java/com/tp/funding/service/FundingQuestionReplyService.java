package com.tp.funding.service;

import com.tp.funding.dto.FundingQuestion;

public interface FundingQuestionReplyService {

	public FundingQuestion fundingQuestionReplyDetail(int fundingQuestionReplyNumber);
	
	public int fundingQuestionReplyWrite(FundingQuestion fundingQuestion);
	
}
