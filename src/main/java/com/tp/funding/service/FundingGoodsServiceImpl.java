package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.FundingGoodsDao;
import com.tp.funding.dto.FundingGoods;
import com.tp.funding.util.Paging;
@Service
public class FundingGoodsServiceImpl implements FundingGoodsService {

	@Autowired
	private FundingGoodsDao fundingGoodsDao ;
	
	@Override
	public List<FundingGoodsDao> fundingOpenList(FundingGoods fundingGoods) { // 페이징
		return fundingGoodsDao.fundingOpenList(fundingGoods);
	}

	@Override
	public List<FundingGoodsDao> fundingCloseList(FundingGoods fundingGoods) { // 페이징
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
	public List<FundingGoodsDao> investmentAllList(String pageNum) {
		// pageSize = 6, BlockSize = 5
		int investmentTotalCount = investmentTotalCount();
		Paging paging = new Paging(investmentTotalCount, pageNum, 6, 5);
		// 페이징 처리
		FundingGoods fundingGoods = new FundingGoods();
		fundingGoods.setStartRow(paging.getStartRow());
		fundingGoods.setEndRow(paging.getEndRow());
		return fundingGoodsDao.investmentAllList(fundingGoods);
	}

	@Override
	public List<FundingGoodsDao> rewardAllList(String pageNum) {
		int rewardTotalCount = rewardTotalCount();
		Paging paging = new Paging(rewardTotalCount, pageNum, 6, 5);
		// 페이징 처리
		FundingGoods fundingGoods = new FundingGoods();
		fundingGoods.setStartRow(paging.getStartRow());
		fundingGoods.setEndRow(paging.getEndRow());
		return fundingGoodsDao.rewardAllList(fundingGoods);
	}

	@Override
	public FundingGoods fundingDetail(int fundingCode) {
		return fundingGoodsDao.fundingDetail(fundingCode);
	}

	@Override
	public int fundingRegist(FundingGoods fundingGoods) {
		return fundingGoodsDao.fundingRegist(fundingGoods);
	}

	@Override
	public int fundingAccountAdd(FundingGoods fundingGoods) {
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
	public int fundingBalancePlus(FundingGoods fundingGoods) {
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

	@Override
	public int investmentTotalCount() {
		return fundingGoodsDao.investmentTotalCount();
	}

	@Override
	public int rewardTotalCount() {
		return fundingGoodsDao.rewardTotalCount();
	}

}
