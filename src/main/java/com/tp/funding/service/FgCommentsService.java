package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.FundingGoodsComments;

public interface FgCommentsService {
	public int fundingCommentWrite(FundingGoodsComments fundingGoodsComments);
	public List<FundingGoodsComments> fundingCommentList(FundingGoodsComments fundingGoodsComments); //페이징
	public FundingGoodsComments fundingCommentDetail(int fgCommentsNumber);
}
