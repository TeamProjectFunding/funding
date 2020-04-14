package com.tp.funding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.FundingGoodsCommentsReply;
@Repository
public class FgCommentsReplyDaoImpl implements FgCommentsReplyDao {
	@Autowired
	private SqlSession sessionTemplate;
	@Override
	public int fundingCommentsReplyWrite(FundingGoodsCommentsReply fundingGoodsCommentsReply) {
		return sessionTemplate.insert("fundingCommentsReplyWrite", fundingGoodsCommentsReply);
	}

	@Override
	public FundingGoodsCommentsReply fundingCommentReplyDetail(int fgCommentsNumber) {
		return sessionTemplate.selectOne("fundingCommentReplyDetail", fgCommentsNumber);
	}

	@Override
	public List<FundingGoodsCommentsReply> fundingCommentReplyList() {//페이징 안할까?
		return sessionTemplate.selectList("fundingCommentReplyList");
	}

}
