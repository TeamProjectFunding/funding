package com.tp.funding.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.Notice;
@Repository
public class NoticeDaoImpl implements NoticeDao {
	@Autowired
	private SqlSession sessionTemplate;
	@Override
	public int totNotice() {
		return sessionTemplate.selectOne("totNotice");
	}

	@Override
	public int noticeWrite(Notice notice) {
		return sessionTemplate.insert("noticeWrite", notice);
	}

	@Override
	public Notice noticeDetail(int noticeNumber) {
		return sessionTemplate.selectOne("noticeDetail", noticeNumber);
	}

	@Override
	public int noticeModify(Notice notice) {
		return sessionTemplate.update("noticeModify", notice);
	}

	@Override
	public int noticeHitUp(Notice notice) {
		return sessionTemplate.update("noticeHitUp", notice);
	}

	@Override
	public int noticeDelete(int noticeNumber) {
		return sessionTemplate.delete("noticeDelete", noticeNumber);
	}

}
