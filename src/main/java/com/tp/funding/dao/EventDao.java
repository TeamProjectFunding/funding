package com.tp.funding.dao;

import java.util.List;

import com.tp.funding.dto.Event;

public interface EventDao {
	public List<Event> eventAllList();
	public List<Event> eventAdminList(Event event);
	public List<Event> eventDoingList(Event event);
	public List<Event> eventEndingList(Event event);
	public Event eventDetail(int eventNumber);
	public int eventWrite(Event event);
	public int totEvent();
	public int totDoingEvent(Event event);
	public int totEndingEvent();
}