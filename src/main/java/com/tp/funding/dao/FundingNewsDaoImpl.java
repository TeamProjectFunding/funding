package com.tp.funding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.FundingNews;
@Repository
public class FundingNewsDaoImpl implements FundingNewsDao {

	@Autowired
	private SqlSession sessionTemplate;
	
	@Override
	public int fundingNewsWrite(FundingNews fundingNews) {
		return sessionTemplate.insert("fundingNewsWrite", fundingNews);
	}

	@Override
	public List<FundingNews> fundingNewsList(FundingNews fundingNews) {
		return sessionTemplate.selectList("fundingNewsList", fundingNews);
	}

	@Override
	public FundingNews fundingNewsDetail(int fundingNewsNumber) {
		return sessionTemplate.selectOne("fundingNewsDetail", fundingNewsNumber);
	}

}
