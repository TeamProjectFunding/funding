package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.EventDao;
import com.tp.funding.dto.Event;
import com.tp.funding.util.Paging;
@Service
public class EventServiceImpl implements EventService {
	@Autowired
	private EventDao eventDao;
	@Override
	public List<Event> eventAllList() {
		return eventDao.eventAllList();
	}
	@Override
	public List<Event> eventAdminList(String pageNum) {
		int eventTotalCount = eventDao.totDoingEvent();
		Paging paging = new Paging(eventTotalCount, pageNum, 5, 5);
		int startRow = paging.getStartRow();
		int endRow = paging.getEndRow();
		Event event = new Event();
		event.setStartRow(startRow);
		event.setEndRow(endRow);
		return eventDao.eventAdminList(event);
	}
	@Override
	public List<Event> eventDoingList(String pageNum) {
		int eventTotalCount = eventDao.totDoingEvent();
		//pageSize = 5 , BlockSize =5
		Paging paging = new Paging(eventTotalCount, pageNum, 5, 5);
		int startRow = paging.getStartRow();
		int endRow = paging.getEndRow();
		Event event = new Event();
		event.setStartRow(startRow);
		event.setEndRow(endRow);
		return eventDao.eventDoingList(event);
	}

	@Override
	public List<Event> eventEndingList(String pageNum) {
		int eventTotalCount = eventDao.totEndingEvent();
		//pageSize = 5 , BlockSize =5
		Paging paging = new Paging(eventTotalCount, pageNum, 5, 5);
		int startRow = paging.getStartRow();
		int endRow = paging.getEndRow();
		Event event = new Event();
		event.setStartRow(startRow);
		event.setEndRow(endRow);
		return eventDao.eventEndingList(event);
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


	@Override
	public int totDoingEvent() {
		return eventDao.totDoingEvent();
	}

	@Override
	public int totEndingEvent() {
		return eventDao.totEndingEvent();
	}

}
