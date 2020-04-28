package com.tp.funding.dao;

import java.util.List;

import com.tp.funding.dto.FundingGoodsComments;

public interface FgCommentsDao {
	public int fundingCommentWrite(FundingGoodsComments fundingGoodsComments);
	public List<FundingGoodsComments> fundingCommentList(FundingGoodsComments fundingGoodsComments); //페이징
	public FundingGoodsComments fundingCommentDetail(int fgCommentsNumber);
	public int fundingCommentCount(int fundingCode);
	public int fundingCommentReplyCountUp(int fgCommentsNumber);
	public List<FundingGoodsComments> myFundingCommentsList(String userId);
	public int myFundingTotComments(String userId);
	
}