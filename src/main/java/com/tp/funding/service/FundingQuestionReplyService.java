package com.tp.funding.service;

import com.tp.funding.dto.FundingQuestion;
import com.tp.funding.dto.FundingQuestionReply;

public interface FundingQuestionReplyService {

	public FundingQuestion fundingQuestionReplyDetail(int fundingQuestionReplyNumber);
	
	public int fundingQuestionReplyWrite(FundingQuestionReply fundingQuestionReply);
	
}
