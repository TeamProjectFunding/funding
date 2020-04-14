package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dao.FundingGoodsDao;

public interface FundingGoodsService {
	
	public List<FundingGoodsDao> fundingOpenList(FundingGoodsDao fundingGoods);
	public List<FundingGoodsDao> fundingCloseList(FundingGoodsDao fundingGoods);
	public List<FundingGoodsDao> fundingSearchList(String FundingName);
	public List<FundingGoodsDao> searchFundingKeyUpTop5();
	public List<FundingGoodsDao> investmentAllList(FundingGoodsDao fundingGoods);
	public List<FundingGoodsDao> rewardAllList(FundingGoodsDao fundingGoods);
	public FundingGoodsDao fundingDetail(int fundingCode);
	public int fundingRegist(FundingGoodsDao fundingGoods);
	public int fundingAccountAdd(FundingGoodsDao fundingGoods);
	public int fundingAdminPermitYes(int fundingCode);
	public int fundingAdminPermitNo(int fundingCode);
	public int fundingPeopleCountUp(int fundingCode);
	public int fundingBalancePlus(FundingGoodsDao fundingGoods);
	public int fundingTargetRateModify(int fundingCode);
	public int fundingSuccess(int fundingCode);
	public int fundingFailure(int fundingCode);
	public int fundingBalanceMove(int fundingCode);
	
}
