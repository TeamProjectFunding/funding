package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.Event;


public interface EventService {
	public List<Event> eventAllList ();
	public List<Event> eventDoingList(String pageNum);
	public List<Event> eventEndingList(String pageNum);
	public Event eventDetail(int eventNumber);
	public int eventWrite(Event event);
	public int totEvent();
	public int totDoingEvent();
	public int totEndingEvent();
}
