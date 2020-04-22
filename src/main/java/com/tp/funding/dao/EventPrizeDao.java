package com.tp.funding.dao;

import java.util.List;

import com.tp.funding.dto.EventPrize;

public interface EventPrizeDao {
	public List<EventPrize> eventPrizeList();
	public List<EventPrize> eventPrizeRegist(EventPrize eventPrize);
	public String searchNumUserId(EventPrize eventPrize);
	public int raffleUserIdEnrollment(EventPrize eventPrize);
}
