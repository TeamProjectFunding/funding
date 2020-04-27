package com.tp.funding.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.FundingQuestion;
import com.tp.funding.dto.FundingQuestionReply;
@Repository
public class FundingQuestionReplyDaoImpl implements FundingQuestionReplyDao {

	@Autowired
	private SqlSession sessionTemplate;
	
	@Override
	public FundingQuestionReply fundingQuestionReplyDetail(int fundingQuestionReplyNumber) {
		return sessionTemplate.selectOne("fundingQuestionReplyDetail", fundingQuestionReplyNumber);
	}

	@Override
	public int fundingQuestionReplyWrite(FundingQuestionReply fundingQuestionReply) {
		return sessionTemplate.insert("fundingQuestionReplyWrite", fundingQuestionReply);
	}

	@Override
	public FundingQuestionReply myFGQuestionReplyDetail(int fundingQuestionNumber) {
		return sessionTemplate.selectOne("myFGQuestionReplyDetail", fundingQuestionNumber);
	}

}
