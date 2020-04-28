package com.tp.funding.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tp.funding.dto.FundingGoodsDetail;
import com.tp.funding.dto.Reward;

public interface RewardService {
	public int investmentWrite(Reward reward);
	public int rewardWrite(Reward[] reward,MultipartHttpServletRequest mRequest);
	public int rewardInvestmentReceiveCountUp(int rewardCode);
	public Reward rewardDetail(int rewardCode);
	public List<Reward> fundingRewardList(int fundingCode);
	public Reward userSelectReward(int fundingCode,int fundingGoodsDetailNumber); //유저가 선택한 리워드 찾기
	public int interestPaymentDayModify(int rewardCode); // 리워드 이자 지급 날짜 30일 증가
}
