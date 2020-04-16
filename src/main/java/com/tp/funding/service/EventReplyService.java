package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.EventReply;

public interface EventReplyService {
	public int totEventReply();
	public List<EventReply> eventReplyList();
	public int eventReplyWrite(EventReply eventReply);
	public EventReply eventReplyDetail(int eventNumber);
}
