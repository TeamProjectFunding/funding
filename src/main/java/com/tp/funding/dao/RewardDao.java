package com.tp.funding.dao;

import java.util.List;

import com.tp.funding.dto.Reward;

public interface RewardDao {
	public int rewardWrite(Reward reward);
	public int rewardInvestmentReceiveCountUp(int rewardCode);
	public Reward rewardDetail(int rewardCode);
	public List<Reward> fundingRewardList(int fundingcode);
}
