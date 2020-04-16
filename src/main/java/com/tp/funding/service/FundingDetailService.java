package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.FundingGoodsDetail;

public interface FundingDetailService {

public int fundingGoodsDetailWrite(FundingGoodsDetail fundingGoodsDetail);
	
//	public List<FundingGoodsDetail> userFundingList(FundingGoodsDetail fundingGoodsDetail);
	
	public List<FundingGoodsDetail> doFundingUserList(String pageNum, int fundingCode);
	
	public List<FundingGoodsDetail> userInvestmentList(FundingGoodsDetail fundingGoodsDetail);
	
	public List<FundingGoodsDetail> userRewardList(FundingGoodsDetail fundingGoodsDetail);
	
	public int doFundingGoodTotalCount(int fundingCode);
	
}
