package com.tp.funding.service;

import java.util.List;

import org.springframework.ui.Model;

import com.tp.funding.dto.FundingNews;

public interface FundingNewsService {
	
	public int fundingNewsWrite(FundingNews fundingNews);	
	public List<FundingNews> fundingNewsList(String pageNum, int fundingCode, Model model);	
	public FundingNews fundingNewsDetail(int fundingNewsNumber);
	public int newsTotalCountInFunding(int fundingCode);
	
}
