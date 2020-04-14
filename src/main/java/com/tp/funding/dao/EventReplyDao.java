package com.tp.funding.dao;

import java.util.List;

import com.tp.funding.dto.EventReply;

public interface EventReplyDao {
	public int totEventReply();
	public List<EventReply> eventReplyList();
	public int eventReplyWrite(EventReply eventReply);
	public EventReply eventReplyDetail(int eventNumber);
}
