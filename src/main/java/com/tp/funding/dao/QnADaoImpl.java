package com.tp.funding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.QnA;
@Repository
public class QnADaoImpl implements QnADao {
	@Autowired
	private SqlSession sessionTemplate;
	@Override
	public int qnAWrite(QnA qnA) {
		return sessionTemplate.insert("qnAWrite", qnA);
	}

	@Override
	public int qnAReplyWrite(QnA qnA) {
		return sessionTemplate.insert("qnAReplyWrite", qnA);
	}

	@Override
	public int qnADetail(QnA qnA) {
		return sessionTemplate.selectOne("qnADetail", qnA);
	}

	@Override
	public List<QnA> qnAList(QnA qnA) { // 페이징
		return sessionTemplate.selectList("qnAList", qnA);
	}

	@Override
	public int qnAHitUp(int qnANumber) {
		return sessionTemplate.update("qnAHitUp", qnANumber);
	}

	@Override
	public List<QnA> qnAAdminList() {
		return sessionTemplate.selectList("qnAAdminList");
	}

	@Override
	public int totQnA() {
		return sessionTemplate.selectOne("totQnA");
	}

}
