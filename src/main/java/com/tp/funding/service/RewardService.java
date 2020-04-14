package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.Reward;

public interface RewardService {
	public int rewardWrite(Reward reward);
	public int rewardInvestmentReceiveCountUp(int rewardCode);
	public Reward rewardDetail(int rewardCode);
	public List<Reward> fundingRewardList(int fundingcode);
}
