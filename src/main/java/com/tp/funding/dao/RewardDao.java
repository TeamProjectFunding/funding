package com.tp.funding.dao;

import java.util.List;

import com.tp.funding.dto.FundingGoodsDetail;
import com.tp.funding.dto.Reward;

public interface RewardDao {
	public int rewardWrite(Reward reward);
	public int rewardInvestmentReceiveCountUp(int rewardCode);
	public Reward rewardDetail(int rewardCode);
	public List<Reward> fundingRewardList(int fundingCode);
	public Reward userSelectReward(FundingGoodsDetail fundingGoodsDetail); //유저가 선택한 리워드 찾기
	public int interestPaymentDayModify(int rewardCode); // 리워드 이자 지급 날짜 30일 증가
}
