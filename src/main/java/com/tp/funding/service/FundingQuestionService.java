package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.FundingQuestion;

public interface FundingQuestionService {
	
	public List<FundingQuestion> fundingQuestionList(String pageNum);
	
	public FundingQuestion fundingQuestionDetail(int fundingQuestionNumber);
	
	public int fundingQuestionWrite(FundingQuestion fundingQuestion);
	
	public int totfundingQuestion();
	
	public int totGoodsQuesttionList(int fundingCode);
	
	public List<FundingQuestion> goodsQuesttionList(String pageNum, int fundingCode);
	
	public int fundingReplyUpdate(int fundingQuestionNumber);
	
	public List<FundingQuestion> fundingQustionAdminList();
	
	public List<FundingQuestion> myFundingGoodsQnaList(String userId);
}
