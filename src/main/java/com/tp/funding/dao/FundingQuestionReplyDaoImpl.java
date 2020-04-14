package com.tp.funding.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.FundingQuestion;
@Repository
public class FundingQuestionReplyDaoImpl implements FundingQuestionReplyDao {

	@Autowired
	private SqlSession sessionTemplate;
	
	@Override
	public FundingQuestion fundingQuestionReplyDetail(int fundingQuestionReplyNumber) {
		return sessionTemplate.selectOne("fundingQuestionReplyDetail", fundingQuestionReplyNumber);
	}

	@Override
	public int fundingQuestionReplyWrite(FundingQuestion fundingQuestion) {
		return sessionTemplate.insert("fundingQuestionReplyWrite", fundingQuestion);
	}

}
