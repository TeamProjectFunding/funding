package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.RewardDao;
import com.tp.funding.dto.Reward;

@Service
public class RewardServiceImpl implements RewardService {
	@Autowired
	private RewardDao rewardDao;
	
	
	@Override
	public int rewardWrite(Reward reward) {
		return rewardDao.rewardWrite(reward);
	}

	@Override
	public int rewardInvestmentReceiveCountUp(int rewardCode) {
		return rewardDao.rewardInvestmentReceiveCountUp(rewardCode);
	}

	@Override
	public Reward rewardDetail(int rewardCode) {
		return rewardDao.rewardDetail(rewardCode);
	}

	@Override
	public List<Reward> fundingRewardList(int fundingcode) {
		return rewardDao.fundingRewardList(fundingcode);
	}

}
