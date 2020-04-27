package com.tp.funding.dao;

import java.util.List;

import com.tp.funding.dto.FundingGoodsDetail;
import com.tp.funding.dto.Users;

public interface FundingDetailDao {
	
	public int fundingGoodsDetailWrite(FundingGoodsDetail fundingGoodsDetail);
	
	public List<FundingGoodsDetail> userFundingList(FundingGoodsDetail fundingGoodsDetail);
	
	public List<FundingGoodsDetail> doFundingUserList(FundingGoodsDetail fundingGoodsDetail);
	
	public List<FundingGoodsDetail> userInvestmentList(FundingGoodsDetail fundingGoodsDetail);
	
	public List<FundingGoodsDetail> userRewardList(FundingGoodsDetail fundingGoodsDetail);
	
	public int doFundingGoodTotalCount(int fundingCode);
	
	public List<FundingGoodsDetail> fundingGoodsAdminDeadline(int fundingCode);
	
	public int myFundingTotalCount(String userId);
	
	public List<FundingGoodsDetail> userFundingAndGoodsInfoList(FundingGoodsDetail fundingGoodsDetail);
	public int userFundingListTotalCount(String userId); //페이징 위한
	public int userFundingListInMaxFundingAmount(FundingGoodsDetail fundingGoodsDetail); //마이페이지 그래프 y축
	public FundingGoodsDetail fundingGoodsDetailView(int fundingGoodsDetailNumber);
}
