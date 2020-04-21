package com.tp.funding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.FundingGoods;
@Repository
public class FundingGoodsDaoImpl implements FundingGoodsDao {

	@Autowired
	private SqlSession sessionTemplate;
	
	
	@Override
	public List<FundingGoods> fundingOpenList(FundingGoods fundingGoods) {
		return sessionTemplate.selectList("fundingOpenList", fundingGoods);
	}

	@Override
	public List<FundingGoods> fundingCloseList(FundingGoods fundingGoods) {
		return sessionTemplate.selectList("fundingCloseList", fundingGoods);
	}

	@Override
	public List<FundingGoods> fundingSearchList(String FundingName) {
		return sessionTemplate.selectList("fundingSearchList", FundingName);
	}

	@Override
	public List<FundingGoods> searchFundingKeyUpTop5() {
		return sessionTemplate.selectList("searchFundingKeyUpTop5");
	}

	@Override
	public List<FundingGoods> investmentAllList(FundingGoods fundingGoods) {
		return sessionTemplate.selectList("investmentAllList", fundingGoods);
	}

	@Override
	public List<FundingGoods> rewardAllList(FundingGoods fundingGoods) {
		return sessionTemplate.selectList("rewardAllList", fundingGoods);
	}

	@Override
	public FundingGoods fundingDetail(int fundingCode) {
		return sessionTemplate.selectOne("fundingDetail", fundingCode);
	}

	@Override
	public int fundingRegist(FundingGoods fundingGoods) {
		return sessionTemplate.insert("fundingRegist", fundingGoods);
	}

	@Override
	public int fundingAccountAdd(FundingGoods fundingGoods) {
		return sessionTemplate.update("fundingAccountAdd", fundingGoods);
	}

	@Override
	public int fundingAdminPermitYes(int fundingCode) {
		return sessionTemplate.update("fundingAdminPermitYes", fundingCode);
	}

	@Override
	public int fundingAdminPermitNo(int fundingCode) {
		return sessionTemplate.update("fundingAdminPermitNo", fundingCode);
	}

	@Override
	public int fundingPeopleCountUp(int fundingCode) {
		return sessionTemplate.update("fundingPeopleCountUp", fundingCode);
	}

	@Override
	public int fundingBalancePlus(FundingGoods fundingGoods) {
		return sessionTemplate.update("fundingBalancePlus", fundingGoods);
	}

	@Override
	public int fundingTargetRateModify(int fundingCode) {
		return sessionTemplate.update("fundingTargetRateModify", fundingCode);
	}

	@Override
	public int fundingSuccess(int fundingCode) {
		return sessionTemplate.update("fundingSuccess", fundingCode);
	}

	@Override
	public int fundingFailure(int fundingCode) {
		return sessionTemplate.update("fundingFailure", fundingCode);
	}

	@Override
	public int fundingBalanceMove(int fundingCode) {
		return sessionTemplate.update("fundingBalanceMove", fundingCode);
	}

	@Override
	public int investmentTotalCount() {
		return sessionTemplate.selectOne("investmentTotalCount");
	}

	@Override
	public int rewardTotalCount() {
		return sessionTemplate.selectOne("rewardTotalCount");
	}

	@Override
	public List<FundingGoods> fundingReadyList(FundingGoods fundingGoods) {
		return sessionTemplate.selectList("fundingReadyList", fundingGoods);
	}

	@Override
	public List<FundingGoods> fundingDeadlineList() {
		return sessionTemplate.selectList("fundingDeadlineList");
	}

	@Override
	public int totCntReadyList() {
		return sessionTemplate.selectOne("totCntReadyList");
	}	

}
