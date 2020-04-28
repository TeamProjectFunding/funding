package com.tp.funding.service;

import java.util.List;

import org.springframework.ui.Model;

import com.tp.funding.dto.FundingGoodsDetail;

public interface FundingDetailService {

public int fundingGoodsDetailWrite(FundingGoodsDetail fundingGoodsDetail);
	
	
	public List<FundingGoodsDetail> doFundingUserList(String pageNum, int fundingCode);
	
	public List<FundingGoodsDetail> userInvestmentList(FundingGoodsDetail fundingGoodsDetail);
	
	public List<FundingGoodsDetail> userRewardList(FundingGoodsDetail fundingGoodsDetail);
	
	public int doFundingGoodTotalCount(int fundingCode);
	
	public List<FundingGoodsDetail> fundingGoodsAdminDeadline(int fundingCode);
	
	public int myFundingTotalCount(String userId);
	
	public List<FundingGoodsDetail> userFundingAndGoodsInfoList(FundingGoodsDetail fundingGoodsDetail);
	public List<FundingGoodsDetail>userFundingList(String pageNum,String userId,Model model); //userId,startRow,endRow 필요
	public int userFundingListTotalCount(String userId);
	public int userFundingListInMaxFundingAmount(String userId,String pageNum); //마이페이지 그래프 y축
	public FundingGoodsDetail fundingGoodsDetailView(int fundingGoodsDetailNumber);
	public List<FundingGoodsDetail> interestPaymentList(int fundingCode); //이자지급 위한 펀딩신청한 유저 리스트
}
