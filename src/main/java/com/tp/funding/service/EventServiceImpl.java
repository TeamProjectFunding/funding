package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.EventDao;
import com.tp.funding.dto.Event;
@Service
public class EventServiceImpl implements EventService {
	@Autowired
	private EventDao eventDao;
	@Override
	public List<Event> eventDoingList() {
		return eventDao.eventDoingList();
	}

	@Override
	public List<Event> eventEndList() {
		return eventDao.eventEndList();
	}

	@Override
	public Event eventDetail(int eventNumber) {
		return eventDao.eventDetail(eventNumber);
	}

	@Override
	public int eventWrite(Event event) {
		return eventDao.eventWrite(event);
	}

	@Override
	public int totEvent() {
		return eventDao.totEvent();
	}

}
