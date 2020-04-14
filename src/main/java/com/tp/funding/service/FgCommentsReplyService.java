package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.FundingGoodsCommentsReply;

public interface FgCommentsReplyService {
	public int fundingCommentsReplyWrite(FundingGoodsCommentsReply fundingGoodsCommentsReply);
	public FundingGoodsCommentsReply fundingCommentReplyDetail(int fgCommentsNumber);
	public List<FundingGoodsCommentsReply> fundingCommentReplyList(); //페이징 처리
}
