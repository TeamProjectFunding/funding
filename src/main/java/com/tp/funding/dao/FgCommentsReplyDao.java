package com.tp.funding.dao;

import java.util.List;

import com.tp.funding.dto.FundingGoodsCommentsReply;

public interface FgCommentsReplyDao {
	public int fundingCommentsReplyWrite(FundingGoodsCommentsReply fundingGoodsCommentsReply);
	public FundingGoodsCommentsReply fundingCommentReplyDetail(int fgCommentsNumber);
	public List<FundingGoodsCommentsReply> fundingCommentReplyList(int fgCommentsNumber);
}
