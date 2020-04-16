package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.EventPrize;

public interface EventPrizeService {
	public List<EventPrize> eventPrizeList();
	public List<EventPrize> eventPrizeRegist(EventPrize eventPrize);
}
