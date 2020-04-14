package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.FgCommentsReplyDao;
import com.tp.funding.dto.FundingGoodsCommentsReply;
@Service
public class FgCommentsReplyServiceImpl implements FgCommentsReplyService {
	@Autowired
	private FgCommentsReplyDao fgCommentsReplyDao;
	
	@Override
	public int fundingCommentsReplyWrite(FundingGoodsCommentsReply fundingGoodsCommentsReply) {
		return fgCommentsReplyDao.fundingCommentsReplyWrite(fundingGoodsCommentsReply);
	}

	@Override
	public FundingGoodsCommentsReply fundingCommentReplyDetail(int fgCommentsNumber) {
		return fgCommentsReplyDao.fundingCommentReplyDetail(fgCommentsNumber);
	}

	@Override
	public List<FundingGoodsCommentsReply> fundingCommentReplyList() {
		return fgCommentsReplyDao.fundingCommentReplyList();
	}

}
