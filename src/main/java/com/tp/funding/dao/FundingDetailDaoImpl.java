package com.tp.funding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.FundingGoodsDetail;
import com.tp.funding.dto.Users;
@Repository
public class FundingDetailDaoImpl implements FundingDetailDao {
	
	@Autowired
	private SqlSession sessionTemplate;
	
	@Override
	public int fundingGoodsDetailWrite(FundingGoodsDetail fundingGoodsDetail) {
		return sessionTemplate.insert("fundingGoodsDetailWrite", fundingGoodsDetail);
	}

	@Override
	public List<FundingGoodsDetail> userFundingList(FundingGoodsDetail fundingGoodsDetail) {
		return sessionTemplate.selectList("userFundingList", fundingGoodsDetail);
	}

	@Override
	public List<FundingGoodsDetail> doFundingUserList(FundingGoodsDetail fundingGoodsDetail) {
		return sessionTemplate.selectList("doFundingUserList", fundingGoodsDetail);
	}

	@Override
	public List<FundingGoodsDetail> userInvestmentList(FundingGoodsDetail fundingGoodsDetail) {
		return sessionTemplate.selectList("userInvestmentList", fundingGoodsDetail);
	}

	@Override
	public List<FundingGoodsDetail> userRewardList(FundingGoodsDetail fundingGoodsDetail) {
		return sessionTemplate.selectList("userRewardList", fundingGoodsDetail);
	}

	@Override
	public int doFundingGoodTotalCount(int fundingCode) {
		return sessionTemplate.selectOne("doFundingGoodTotalCount", fundingCode);
	}

	@Override
	public List<FundingGoodsDetail> fundingGoodsAdminDeadline(int fundingCode) {
		return sessionTemplate.selectList("fundingGoodsAdminDeadline", fundingCode);
	}

	@Override
	public int myFundingTotalCount(String userId) {
		return sessionTemplate.selectOne("myFundingTotalCount", userId);
	}

	@Override
	public List<FundingGoodsDetail> userFundingAndGoodsInfoList(FundingGoodsDetail fundingGoodsDetail) {
		return sessionTemplate.selectList("userFundingAndGoodsInfoList", fundingGoodsDetail);
	}


	@Override
	public int userFundingListTotalCount(String userId) {
		return sessionTemplate.selectOne("userFundingListTotalCount", userId);
	}

	@Override
	public int userFundingListInMaxFundingAmount(FundingGoodsDetail fundingGoodsDetail) {
		return sessionTemplate.selectOne("userFundingListInMaxFundingAmount", fundingGoodsDetail);
	}

	@Override
	public FundingGoodsDetail fundingGoodsDetailView(int fundingGoodsDetailNumber) {
		return sessionTemplate.selectOne("fundingGoodsDetailView", fundingGoodsDetailNumber);
	}


}
