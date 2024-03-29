package com.tp.funding.dao;

import java.util.List;

import com.tp.funding.dto.FundingGoods;
import com.tp.funding.dto.Users;

public interface FundingGoodsDao {
	
	public List<FundingGoods> fundingOpenList(FundingGoods fundingGoods);
	public List<FundingGoods> fundingCloseList(FundingGoods fundingGoods);
	public List<FundingGoods> fundingSearchList(String FundingName);
	public List<FundingGoods> searchFundingKeyUpTop5();
	public List<FundingGoods> investmentAllList(FundingGoods fundingGoods);
	public List<FundingGoods> rewardAllList(FundingGoods fundingGoods);
	public List<FundingGoods> investmentOpenList(FundingGoods fundingGoods);
	public List<FundingGoods> rewardOpenList(FundingGoods fundingGoods);
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
	public List<FundingGoods> fundingReadyList(FundingGoods fundingGoods);	
	public int totCntReadyList();	
	public int totCntOpenList();
	
	public int investmentTotalCount();
	public int rewardTotalCount();
	public List<FundingGoods> fundingDeadlineList();// 마감 5일전 안의 것 뿌리기
	public FundingGoods getFundingGoods(int fundingCode);
	public int fundingSucces(int fundingCode);
	public int fundraizingFailure(int fundingCode);
	public int getFundingCode(); //현재 펀딩코드 가져오기 (리워드 등록할 때)
	public List<FundingGoods> companyEndFundingList(FundingGoods fundingGoods); // 회사 마이페이지 그래프
	public int maxRecruitmentAmount(FundingGoods fundingGoods); // 회사 마이페이지 그래프 최대 모집금액
	public int companyEndFundingCount(String companyId); // 회사 마이페이지 펀딩 총 갯수(페이징)
	public List<FundingGoods>fundingAdminAllList();
	public FundingGoods auditFunding(String companyId); //심사 중인 펀딩 가져오기
	public FundingGoods ongoingFunding(String companyId); //진행 중인 펀딩 가져오기

}
