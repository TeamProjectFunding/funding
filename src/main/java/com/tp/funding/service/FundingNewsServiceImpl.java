package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.FundingNewsDao;
import com.tp.funding.dto.FundingNews;
@Service
public class FundingNewsServiceImpl implements FundingNewsService {

	@Autowired
	private FundingNewsDao fundingNewsDao;
	
	@Override
	public int fundingNewsWrite(FundingNews fundingNews) {
		return fundingNewsDao.fundingNewsWrite(fundingNews);
	}

	@Override
	public List<FundingNews> fundingNewsList(FundingNews fundingNews) {
		return fundingNewsDao.fundingNewsList(fundingNews);
	}

	@Override
	public FundingNews fundingNewsDetail(int fundingNewsNumber) {
		return fundingNewsDao.fundingNewsDetail(fundingNewsNumber);
	}

}
