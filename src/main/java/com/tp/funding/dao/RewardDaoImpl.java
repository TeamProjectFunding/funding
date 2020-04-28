package com.tp.funding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.FundingGoodsDetail;
import com.tp.funding.dto.Reward;
@Repository
public class RewardDaoImpl implements RewardDao {
	@Autowired
	private SqlSession sessionTemplate;
	
	@Override
	public int rewardWrite(Reward reward) {
		return sessionTemplate.insert("rewardWrite", reward);
	}

	@Override
	public int rewardInvestmentReceiveCountUp(int rewardCode) {
		return sessionTemplate.update("rewardInvestmentReceiveCountUp", rewardCode);
	}

	@Override
	public Reward rewardDetail(int rewardCode) {
		return sessionTemplate.selectOne("rewardDetail", rewardCode);
	}

	@Override
	public List<Reward> fundingRewardList(int fundingCode) {
		return sessionTemplate.selectList("fundingRewardList", fundingCode);
	}

	@Override
	public Reward userSelectReward(FundingGoodsDetail fundingGoodsDetail) {
		return sessionTemplate.selectOne("userSelectReward", fundingGoodsDetail);
	}

	@Override
	public int interestPaymentDayModify(int rewardCode) {
		return sessionTemplate.update("interestPaymentDayModify", rewardCode);
	}



}
