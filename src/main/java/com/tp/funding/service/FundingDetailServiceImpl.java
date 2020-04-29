package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.tp.funding.dao.FundingDetailDao;
import com.tp.funding.dto.FundingGoods;
import com.tp.funding.dto.FundingGoodsDetail;
import com.tp.funding.dto.Users;
import com.tp.funding.util.Paging;
@Service
public class FundingDetailServiceImpl implements FundingDetailService {

	@Autowired
	private FundingDetailDao fundingDetailDao;
	
	@Override
	public int fundingGoodsDetailWrite(FundingGoodsDetail fundingGoodsDetail) {
		return fundingDetailDao.fundingGoodsDetailWrite(fundingGoodsDetail);
	}


	@Override
	public List<FundingGoodsDetail> doFundingUserList(String pageNum, int fundingCode) {
		// pageSize = 30, BlockSize = 1
				int doFundingGoodTotalCount = doFundingGoodTotalCount(fundingCode);
				Paging paging = new Paging(doFundingGoodTotalCount, pageNum, 30, 1);
				// 페이징 처리
				FundingGoodsDetail fundingGoodsDetail = new FundingGoodsDetail();
				fundingGoodsDetail.setFundingCode(fundingCode);
				fundingGoodsDetail.setStartRow(paging.getStartRow());
				fundingGoodsDetail.setEndRow(paging.getEndRow());
		return fundingDetailDao.doFundingUserList(fundingGoodsDetail);
	}

	@Override
	public List<FundingGoodsDetail> userInvestmentList(FundingGoodsDetail fundingGoodsDetail) {
		return fundingDetailDao.userInvestmentList(fundingGoodsDetail);
	}

	@Override
	public List<FundingGoodsDetail> userRewardList(FundingGoodsDetail fundingGoodsDetail) {
		return fundingDetailDao.userRewardList(fundingGoodsDetail);
	}

	@Override
	public int doFundingGoodTotalCount(int fundingCode) {
		return fundingDetailDao.doFundingGoodTotalCount(fundingCode);
	}

	@Override
	public List<FundingGoodsDetail> fundingGoodsAdminDeadline(int fundingCode) {
		return fundingDetailDao.fundingGoodsAdminDeadline(fundingCode);
	}

	@Override
	public int myFundingTotalCount(String userId) {
		return fundingDetailDao.myFundingTotalCount(userId);
	}

	@Override
	public List<FundingGoodsDetail> userFundingAndGoodsInfoList(FundingGoodsDetail fundingGoodsDetail) {
		return fundingDetailDao.userFundingAndGoodsInfoList(fundingGoodsDetail);
	}

	@Override
	public List<FundingGoodsDetail> userFundingList(String pageNum, String userId, Model model) {
		int userFundingListTotalCount = userFundingListTotalCount(userId);
		Paging paging = new Paging(userFundingListTotalCount, pageNum, 5, 1);
		if(model !=null) {
			model.addAttribute("paging", paging);
		}
		FundingGoodsDetail fundingGoodsDetail = new FundingGoodsDetail();
		fundingGoodsDetail.setStartRow(paging.getStartRow());
		fundingGoodsDetail.setEndRow(paging.getEndRow());
		fundingGoodsDetail.setUserId(userId);
		return fundingDetailDao.userFundingList(fundingGoodsDetail);
	}

	@Override
	public int userFundingListTotalCount(String userId) {
		return fundingDetailDao.userFundingListTotalCount(userId);
	}

	@Override
	public int userFundingListInMaxFundingAmount(String userId,String pageNum) {
		int userFundingListTotalCount = userFundingListTotalCount(userId);
		Paging paging = new Paging(userFundingListTotalCount, pageNum, 5, 1);
		FundingGoodsDetail fundingGoodsDetail = new FundingGoodsDetail();
		fundingGoodsDetail.setStartRow(paging.getStartRow());
		fundingGoodsDetail.setEndRow(paging.getEndRow());
		fundingGoodsDetail.setUserId(userId);
		return fundingDetailDao.userFundingListInMaxFundingAmount(fundingGoodsDetail);
	}


	@Override
	public FundingGoodsDetail fundingGoodsDetailView(int fundingGoodsDetailNumber) {
		return fundingDetailDao.fundingGoodsDetailView(fundingGoodsDetailNumber);
	}


	@Override
	public List<FundingGoodsDetail> interestPaymentList(int fundingCode) {
		return fundingDetailDao.interestPaymentList(fundingCode);
	}

}
