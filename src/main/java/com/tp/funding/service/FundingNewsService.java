package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.FundingNews;

public interface FundingNewsService {
	
	public int fundingNewsWrite(FundingNews fundingNews);	
	public List<FundingNews> fundingNewsList(FundingNews fundingNews);	
	public FundingNews fundingNewsDetail(int fundingNewsNumber);
	
}
