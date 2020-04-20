package com.tp.funding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.FundingQuestion;
@Repository
public class FundingQuestionDaoImpl implements FundingQuestionDao {

	@Autowired
	private SqlSession sessionTemplate;	
	
	@Override
	public List<FundingQuestion> fundingQuestionList(FundingQuestion fundingQuestion) {
		return sessionTemplate.selectList("fundingQuestionList", fundingQuestion);
	}

	@Override
	public FundingQuestion fundingQuestionDetail(int fundingQuestionNumber) {
		return sessionTemplate.selectOne("fundingQuestionDetail", fundingQuestionNumber);
	}

	@Override
	public int fundingQuestionWrite(FundingQuestion fundingQuestion) {
		return sessionTemplate.insert("fundingQuestionWrite", fundingQuestion);
	}

	@Override
	public int totfundingQuestion() {
		return sessionTemplate.selectOne("totfundingQuestion");
	}

}
