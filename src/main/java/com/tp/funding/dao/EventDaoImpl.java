package com.tp.funding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.Event;
@Repository
public class EventDaoImpl implements EventDao {
	@Autowired
	private SqlSession sessionTemplate;
	@Override
	public List<Event> eventDoingList() {
		return sessionTemplate.selectList("eventDoingList");
	}

	@Override
	public List<Event> eventEndList() {
		return sessionTemplate.selectList("eventEndList");
	}

	@Override
	public Event eventDetail(int eventNumber) {
		return sessionTemplate.selectOne("eventDetail", eventNumber);
	}

	@Override
	public int eventWrite(Event event) {
		return sessionTemplate.insert("eventWrite", event);
	}

	@Override
	public int totEvent() {
		return sessionTemplate.selectOne("totEvent");
	}

}
