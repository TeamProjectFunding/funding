package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dao.FundingGoodsDao;
import com.tp.funding.dto.FundingGoods;

public interface FundingGoodsService {
	
	public List<FundingGoodsDao> fundingOpenList(FundingGoods fundingGoods);
	public List<FundingGoodsDao> fundingCloseList(FundingGoods fundingGoods);
	public List<FundingGoodsDao> fundingSearchList(String FundingName);
	public List<FundingGoodsDao> searchFundingKeyUpTop5();
	public List<FundingGoodsDao> investmentAllList(String pageNum);
	public List<FundingGoodsDao> rewardAllList(String pageNum);
	public FundingGoods fundingDetail(int fundingCode);
	public int fundingRegist(FundingGoods fundingGoods);
	public int fundingAccountAdd(FundingGoods fundingGoods);
	public int fundingAdminPermitYes(int fundingCode);
	public int fundingAdminPermitNo(int fundingCode);
	public int fundingPeopleCountUp(int fundingCode);
	public int fundingBalancePlus(FundingGoods fundingGoods);
	public int fundingTargetRateModify(int fundingCode);
	public int fundingSuccess(int fundingCode);
	public int fundingFailure(int fundingCode);
	public int fundingBalanceMove(int fundingCode);
	public int investmentTotalCount();
	public int rewardTotalCount();
}
