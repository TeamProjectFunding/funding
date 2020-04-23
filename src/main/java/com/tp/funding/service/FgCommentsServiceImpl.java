package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.tp.funding.dao.FgCommentsDao;
import com.tp.funding.dto.FundingGoods;
import com.tp.funding.dto.FundingGoodsComments;
import com.tp.funding.util.Paging;
@Service
public class FgCommentsServiceImpl implements FgCommentsService {
	@Autowired
	private FgCommentsDao fgCommentsDao;
	
	@Override
	public int fundingCommentWrite(FundingGoodsComments fundingGoodsComments) {
		return fgCommentsDao.fundingCommentWrite(fundingGoodsComments);
	}

	@Override
	public List<FundingGoodsComments> fundingCommentList(int fundingCode,String pageNum,Model model) {
		// pageSize = 10, BlockSize = 5
		int commentTotalCount = fundingCommentCount(fundingCode);
		Paging paging = new Paging(commentTotalCount, pageNum, 10, 5);
		// 페이징 처리
		if(model != null) {
			model.addAttribute("paging", paging);
		}
		FundingGoodsComments fundingGoodsComments = new FundingGoodsComments();
		fundingGoodsComments.setFundingCode(fundingCode);
		fundingGoodsComments.setStartRow(paging.getStartRow());
		fundingGoodsComments.setEndRow(paging.getEndRow());
		return fgCommentsDao.fundingCommentList(fundingGoodsComments);
	}

	@Override
	public FundingGoodsComments fundingCommentDetail(int fgCommentsNumber) {
		return fgCommentsDao.fundingCommentDetail(fgCommentsNumber);
	}

	@Override
	public int fundingCommentCount(int fundingCode) {
		return fgCommentsDao.fundingCommentCount(fundingCode);
	}

}
