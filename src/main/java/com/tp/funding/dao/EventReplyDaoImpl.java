package com.tp.funding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.EventReply;
@Repository
public class EventReplyDaoImpl implements EventReplyDao {
	@Autowired
	private SqlSession sessionTemplate;
	@Override
	public int totEventReply() {
		return sessionTemplate.selectOne("totEventReply");
	}

	@Override
	public List<EventReply> eventReplyList() {
		return sessionTemplate.selectList("eventReplyList");
	}

	@Override
	public int eventReplyWrite(EventReply eventReply) {
		return sessionTemplate.insert("eventReplyWrite", eventReply);
	}

	@Override
	public EventReply eventReplyDetail(int eventNumber) {
		return sessionTemplate.selectOne("eventReplyDetail", eventNumber);
	}

}
