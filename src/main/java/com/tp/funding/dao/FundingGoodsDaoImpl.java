package com.tp.funding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class FundingGoodsDaoImpl implements FundingGoodsDao {

	@Autowired
	private SqlSession sessionTemplate;
	
	
	@Override
	public List<FundingGoodsDao> fundingOpenList(FundingGoodsDao fundingGoods) {
		return sessionTemplate.selectList("fundingOpenList", fundingGoods);
	}

	@Override
	public List<FundingGoodsDao> fundingCloseList(FundingGoodsDao fundingGoods) {
		return sessionTemplate.selectList("fundingCloseList", fundingGoods);
	}

	@Override
	public List<FundingGoodsDao> fundingSearchList(String FundingName) {
		return sessionTemplate.selectList("fundingSearchList", FundingName);
	}

	@Override
	public List<FundingGoodsDao> searchFundingKeyUpTop5() {
		return sessionTemplate.selectList("searchFundingKeyUpTop5");
	}

	@Override
	public List<FundingGoodsDao> investmentAllList(FundingGoodsDao fundingGoods) {
		return sessionTemplate.selectList("investmentAllList", fundingGoods);
	}

	@Override
	public List<FundingGoodsDao> rewardAllList(FundingGoodsDao fundingGoods) {
		return sessionTemplate.selectList("rewardAllList", fundingGoods);
	}

	@Override
	public FundingGoodsDao fundingDetail(int fundingCode) {
		return sessionTemplate.selectOne("fundingDetail", fundingCode);
	}

	@Override
	public int fundingRegist(FundingGoodsDao fundingGoods) {
		return sessionTemplate.insert("fundingRegist", fundingGoods);
	}

	@Override
	public int fundingAccountAdd(FundingGoodsDao fundingGoods) {
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
	public int fundingBalancePlus(FundingGoodsDao fundingGoods) {
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

}
