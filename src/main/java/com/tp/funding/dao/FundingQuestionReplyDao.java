package com.tp.funding.dao;

import com.tp.funding.dto.FundingQuestion;
import com.tp.funding.dto.FundingQuestionReply;

public interface FundingQuestionReplyDao {
	
	public FundingQuestionReply fundingQuestionReplyDetail(int fundingQuestionReplyNumber);
	
	public int fundingQuestionReplyWrite(FundingQuestionReply fundingQuestionReply);
	
	public FundingQuestionReply myFGQuestionReplyDetail(int fundingQuestionNumber);
}
