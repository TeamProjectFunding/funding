package com.tp.funding.service;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tp.funding.dao.FundingGoodsDao;
import com.tp.funding.dto.FundingGoods;

public interface FundingGoodsService {
	
	public List<FundingGoods> fundingOpenList(FundingGoods fundingGoods);
	public List<FundingGoods> fundingCloseList(FundingGoods fundingGoods);
	public List<FundingGoods> fundingSearchList(String FundingName);
	public List<FundingGoods> searchFundingKeyUpTop5();
	public List<FundingGoods> investmentAllList(String pageNum,Model model);
	public List<FundingGoods> rewardAllList(String pageNum,Model model);
	public List<FundingGoods> investmentOpenList(String pageNum,Model model);
	public List<FundingGoods> rewardOpenList(String pageNum,Model model);
	public FundingGoods fundingDetail(int fundingCode);
	public int fundingRegist(FundingGoods fundingGoods, MultipartHttpServletRequest mRequest);
	public int fundingAccountAdd(FundingGoods fundingGoods);
	public int fundingAdminPermitYes(int fundingCode);
	public int fundingAdminPermitNo(int fundingCode);
	public int fundingPeopleCountUp(int fundingCode);
	public int fundingBalancePlus(int fundingCode,int changeAccountBalance);
	public int fundingTargetRateModify(int fundingCode);
	public int fundingSuccess(int fundingCode);
	public int fundingFailure(int fundingCode);
	public int fundingBalanceMove(int fundingCode);
	public int investmentTotalCount();
	public int rewardTotalCount();
	public List<FundingGoods> fundingReadyList();
	public List<FundingGoods> fundingDeadlineList();// 마감 5일전 안의 것 뿌리기
	public int totCntOpenList();
	
}
