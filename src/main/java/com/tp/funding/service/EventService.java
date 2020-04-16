package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.Event;


public interface EventService {
	public List<Event> eventDoingList();
	public List<Event> eventEndList();
	public Event eventDetail(int eventNumber);
	public int eventWrite(Event event);
	public int totEvent();
}
