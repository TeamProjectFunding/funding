package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.FundingGoodsDao;
import com.tp.funding.dto.FundingGoods;
@Service
public class FundingGoodsServiceImpl implements FundingGoodsService {

	@Autowired
	private FundingGoodsDao fundingGoodsDao ;
	
	@Override
	public List<FundingGoodsDao> fundingOpenList(FundingGoodsDao fundingGoods) { // 페이징
		return fundingGoodsDao.fundingOpenList(fundingGoods);
	}

	@Override
	public List<FundingGoodsDao> fundingCloseList(FundingGoodsDao fundingGoods) { // 페이징
		return fundingGoodsDao.fundingCloseList(fundingGoods);
	}

	@Override
	public List<FundingGoodsDao> fundingSearchList(String FundingName) {
		return fundingGoodsDao.fundingSearchList(FundingName);
	}

	@Override
	public List<FundingGoodsDao> searchFundingKeyUpTop5() {
		return fundingGoodsDao.searchFundingKeyUpTop5();
	}

	@Override
	public List<FundingGoodsDao> investmentAllList(FundingGoodsDao fundingGoods) {
		return fundingGoodsDao.investmentAllList(fundingGoods);
	}

	@Override
	public List<FundingGoodsDao> rewardAllList(FundingGoodsDao fundingGoods) {
		return fundingGoodsDao.rewardAllList(fundingGoods);
	}

	@Override
	public FundingGoodsDao fundingDetail(int fundingCode) {
		return fundingGoodsDao.fundingDetail(fundingCode);
	}

	@Override
	public int fundingRegist(FundingGoodsDao fundingGoods) {
		return fundingGoodsDao.fundingRegist(fundingGoods);
	}

	@Override
	public int fundingAccountAdd(FundingGoodsDao fundingGoods) {
		return fundingGoodsDao.fundingAccountAdd(fundingGoods);
	}

	@Override
	public int fundingAdminPermitYes(int fundingCode) {
		return fundingGoodsDao.fundingAdminPermitYes(fundingCode);
	}

	@Override
	public int fundingAdminPermitNo(int fundingCode) {
		return fundingGoodsDao.fundingAdminPermitNo(fundingCode);
	}

	@Override
	public int fundingPeopleCountUp(int fundingCode) {
		return fundingGoodsDao.fundingPeopleCountUp(fundingCode);
	}

	@Override
	public int fundingBalancePlus(FundingGoodsDao fundingGoods) {
		return fundingGoodsDao.fundingBalancePlus(fundingGoods);
	}

	@Override
	public int fundingTargetRateModify(int fundingCode) {
		return fundingGoodsDao.fundingTargetRateModify(fundingCode);
	}

	@Override
	public int fundingSuccess(int fundingCode) {
		return fundingGoodsDao.fundingSuccess(fundingCode);
	}

	@Override
	public int fundingFailure(int fundingCode) {
		return fundingGoodsDao.fundingFailure(fundingCode);
	}

	@Override
	public int fundingBalanceMove(int fundingCode) {
		return fundingGoodsDao.fundingBalanceMove(fundingCode);
	}

}
