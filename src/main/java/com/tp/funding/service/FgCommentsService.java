package com.tp.funding.service;

import java.util.List;

import org.springframework.ui.Model;

import com.tp.funding.dto.FundingGoodsComments;

public interface FgCommentsService {
	public int fundingCommentWrite(FundingGoodsComments fundingGoodsComments);
	public List<FundingGoodsComments> fundingCommentList(int fundingCode,String pageNum,Model model); //페이징
	public FundingGoodsComments fundingCommentDetail(int fgCommentsNumber);
	public int fundingCommentCount(int fundingCode);
}
