package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.FundingDetailDao;
import com.tp.funding.dto.FundingGoods;
import com.tp.funding.dto.FundingGoodsDetail;
import com.tp.funding.util.Paging;
@Service
public class FundingDetailServiceImpl implements FundingDetailService {

	@Autowired
	private FundingDetailDao fundingDetailDao;
	
	@Override
	public int fundingGoodsDetailWrite(FundingGoodsDetail fundingGoodsDetail) {
		return fundingDetailDao.fundingGoodsDetailWrite(fundingGoodsDetail);
	}

	@Override
	public List<FundingGoodsDetail> userFundingList(FundingGoodsDetail fundingGoodsDetail) {
		return fundingDetailDao.userFundingList(fundingGoodsDetail);
	}

	@Override
	public List<FundingGoodsDetail> doFundingUserList(String pageNum, int fundingCode) {
		// pageSize = 30, BlockSize = 1
				int doFundingGoodTotalCount = doFundingGoodTotalCount(fundingCode);
				Paging paging = new Paging(doFundingGoodTotalCount, pageNum, 30, 1);
				// 페이징 처리
				FundingGoodsDetail fundingGoodsDetail = new FundingGoodsDetail();
				fundingGoodsDetail.setFundingCode(fundingCode);
				fundingGoodsDetail.setStartRow(paging.getStartRow());
				fundingGoodsDetail.setEndRow(paging.getEndRow());
		return fundingDetailDao.doFundingUserList(fundingGoodsDetail);
	}

	@Override
	public List<FundingGoodsDetail> userInvestmentList(FundingGoodsDetail fundingGoodsDetail) {
		return fundingDetailDao.userInvestmentList(fundingGoodsDetail);
	}

	@Override
	public List<FundingGoodsDetail> userRewardList(FundingGoodsDetail fundingGoodsDetail) {
		return fundingDetailDao.userRewardList(fundingGoodsDetail);
	}

	@Override
	public int doFundingGoodTotalCount(int fundingCode) {
		return fundingDetailDao.doFundingGoodTotalCount(fundingCode);
	}

	@Override
	public List<FundingGoodsDetail> fundingGoodsAdminDeadline(int fundingCode) {
		return fundingDetailDao.fundingGoodsAdminDeadline(fundingCode);
	}

}
