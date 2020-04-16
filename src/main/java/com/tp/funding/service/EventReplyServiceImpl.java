package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.EventReplyDao;
import com.tp.funding.dto.EventReply;
@Service
public class EventReplyServiceImpl implements EventReplyService {
	@Autowired
	private EventReplyDao eventReplyDao;
	@Override
	public int totEventReply() {
		return eventReplyDao.totEventReply();
	}

	@Override
	public List<EventReply> eventReplyList() {
		return eventReplyDao.eventReplyList();
	}

	@Override
	public int eventReplyWrite(EventReply eventReply) {
		return eventReplyDao.eventReplyWrite(eventReply);
	}

	@Override
	public EventReply eventReplyDetail(int eventNumber) {
		return eventReplyDao.eventReplyDetail(eventNumber);
	}

}
