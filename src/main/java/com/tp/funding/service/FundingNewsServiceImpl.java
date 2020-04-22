package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.tp.funding.dao.FundingNewsDao;
import com.tp.funding.dto.FundingGoods;
import com.tp.funding.dto.FundingNews;
import com.tp.funding.util.Paging;
@Service
public class FundingNewsServiceImpl implements FundingNewsService {

	@Autowired
	private FundingNewsDao fundingNewsDao;
	
	@Override
	public int fundingNewsWrite(FundingNews fundingNews) {
		return fundingNewsDao.fundingNewsWrite(fundingNews);
	}


	@Override
	public FundingNews fundingNewsDetail(int fundingNewsNumber) {
		return fundingNewsDao.fundingNewsDetail(fundingNewsNumber);
	}

	@Override
	public int newsTotalCountInFunding(int fundingCode) {
		return fundingNewsDao.newsTotalCountInFunding(fundingCode);
	}
	
	@Override
	public List<FundingNews> fundingNewsList(String pageNum, int fundingCode,Model model) {
		// pageSize 6, blockSize = 5
		int total = newsTotalCountInFunding(fundingCode);
		Paging paging = new Paging(total, pageNum, 6, 5);
		
		// 페이징 처리
		if(model != null) {
			model.addAttribute("paging", paging);
		}
		FundingNews fundingNews = new FundingNews();
		fundingNews.setFundingCode(fundingCode);
		fundingNews.setStartRow(paging.getStartRow());
		fundingNews.setEndRow(paging.getEndRow());
		return fundingNewsDao.fundingNewsList(fundingNews);
	}


	

}
