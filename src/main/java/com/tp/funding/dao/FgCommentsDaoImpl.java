package com.tp.funding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.FundingGoodsComments;
@Repository
public class FgCommentsDaoImpl implements FgCommentsDao {
	@Autowired
	private SqlSession sessionTemplate;
	@Override
	public int fundingCommentWrite(FundingGoodsComments fundingGoodsComments) {
		return sessionTemplate.insert("fundingCommentWrite", fundingGoodsComments);
	}

	@Override
	public List<FundingGoodsComments> fundingCommentList(FundingGoodsComments fundingGoodsComments) {
		return sessionTemplate.selectList("fundingCommentList", fundingGoodsComments);
	}

	@Override
	public FundingGoodsComments fundingCommentDetail(int fgCommentsNumber) {
		return sessionTemplate.selectOne("fundingCommentDetail", fgCommentsNumber);
	}

	@Override
	public int fundingCommentCount(int fundingCode) {
		return sessionTemplate.selectOne("fundingCommentCount", fundingCode);
	}

}
