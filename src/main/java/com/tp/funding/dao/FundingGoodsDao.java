package com.tp.funding.dao;

import java.util.List;

import com.tp.funding.dto.FundingGoods;

public interface FundingGoodsDao {
	
	public List<FundingGoods> fundingOpenList(FundingGoods fundingGoods);
	public List<FundingGoods> fundingCloseList(FundingGoods fundingGoods);
	public List<FundingGoods> fundingSearchList(String FundingName);
	public List<FundingGoods> searchFundingKeyUpTop5();
	public List<FundingGoods> investmentAllList(FundingGoods fundingGoods);
	public List<FundingGoods> rewardAllList(FundingGoods fundingGoods);
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
	public List<FundingGoods> fundingReadyList();
	public int totCntOpenList();
		
	
	public int investmentTotalCount();
	public int rewardTotalCount();
	public List<FundingGoods> fundingDeadlineList();// 마감 5일전 안의 것 뿌리기
	
}
