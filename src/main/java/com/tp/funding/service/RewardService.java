package com.tp.funding.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tp.funding.dto.Reward;

public interface RewardService {
	public int investmentWrite(Reward reward);
	public int rewardWrite(Reward[] reward,MultipartHttpServletRequest mRequest);
	public int rewardInvestmentReceiveCountUp(int rewardCode);
	public Reward rewardDetail(int rewardCode);
	public List<Reward> fundingRewardList(int fundingCode);
}
