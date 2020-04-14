package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.FundingDetailDao;
import com.tp.funding.dto.FundingGoodsDetail;
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
	public List<FundingGoodsDetail> doFundingUserList(FundingGoodsDetail fundingGoodsDetail) {
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

}
