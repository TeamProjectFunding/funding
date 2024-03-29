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

	@Override
	public List<FundingQuestion> goodsQuesttionList(FundingQuestion fundingQuestion) {
		return sessionTemplate.selectList("goodsQuesttionList", fundingQuestion);
	}

	@Override
	public int totGoodsQuesttionList(int fundingCode) {
		return sessionTemplate.selectOne("totGoodsQuesttionList", fundingCode);
	}

	@Override
	public int fundingReplyUpdate(int fundingQuestionNumber) {
		return sessionTemplate.update("fundingReplyUpdate", fundingQuestionNumber);
	}

	@Override
	public List<FundingQuestion> fundingQustionAdminList() {
		return sessionTemplate.selectList("fundingQustionAdminList");
	}

	@Override
	public List<FundingQuestion> myFundingGoodsQnaList(String userId) {
		return sessionTemplate.selectList("myFundingGoodsQnaList", userId);
	}

	@Override
	public int myFundingtotQna(String userId) {
		return sessionTemplate.selectOne("myFundingtotQna", userId);
	}

}
