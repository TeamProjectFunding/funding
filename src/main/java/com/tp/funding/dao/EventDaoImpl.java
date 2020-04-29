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
	public List<Event> eventAllList() {
		return sessionTemplate.selectList("eventAllList");
	}
	@Override
	public List<Event> eventAdminList(Event event) {
		return sessionTemplate.selectList("eventAdminList", event);
	}
	@Override
	public List<Event> eventDoingList(Event event) {
		return sessionTemplate.selectList("eventDoingList", event);
	}

	@Override
	public List<Event> eventEndingList(Event event) {
		return sessionTemplate.selectList("eventEndingList", event);
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

	@Override
	public int totDoingEvent(Event event) {
		return sessionTemplate.selectOne("totDoingEvent", event);
	}

	@Override
	public int totEndingEvent() {
		return sessionTemplate.selectOne("totEndingEvent");
	}
	@Override
	public int eventColseStep1(int eventNumber) {
		return sessionTemplate.selectOne("eventColseStep1", eventNumber);
	}
	@Override
	public int eventColseStep2(Event event) {
		return sessionTemplate.update("eventColseStep2", event);
	}
	
	@Override
	public int eventClose(int eventNumber) {
		return sessionTemplate.update("eventClose", eventNumber);
	}

}
