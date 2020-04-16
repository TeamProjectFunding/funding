package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.FgCommentsDao;
import com.tp.funding.dto.FundingGoodsComments;
@Service
public class FgCommentsServiceImpl implements FgCommentsService {
	@Autowired
	private FgCommentsDao fgCommentsDao;
	
	@Override
	public int fundingCommentWrite(FundingGoodsComments fundingGoodsComments) {
		return fgCommentsDao.fundingCommentWrite(fundingGoodsComments);
	}

	@Override
	public List<FundingGoodsComments> fundingCommentList(FundingGoodsComments fundingGoodsComments) {
		return fgCommentsDao.fundingCommentList(fundingGoodsComments);
	}

	@Override
	public FundingGoodsComments fundingCommentDetail(int fgCommentsNumber) {
		return fgCommentsDao.fundingCommentDetail(fgCommentsNumber);
	}

}
