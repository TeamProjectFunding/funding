package com.tp.funding.dao;

import java.util.List;

import com.tp.funding.dto.FundingNews;

public interface FundingNewsDao {
	public int fundingNewsWrite(FundingNews fundingNews);
	
	public List<FundingNews> fundingNewsList(FundingNews fundingNews);
	
	public FundingNews fundingNewsDetail(int fundingNewsNumber);
	
	public int newsTotalCountInFunding(int fundingCode);
}
