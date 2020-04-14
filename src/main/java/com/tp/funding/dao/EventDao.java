package com.tp.funding.dao;

import java.util.List;

import com.tp.funding.dto.Event;

public interface EventDao {
	public List<Event> eventDoingList();
	public List<Event> eventEndList();
	public Event eventDetail(int eventNumber);
	public int eventWrite(Event event);
	public int totEvent();
}
	
