package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.EventPrizeDao;
import com.tp.funding.dto.EventPrize;
@Service
public class EventPrizeServiceImpl implements EventPrizeService {
	@Autowired
	private EventPrizeDao eventPrizeDao;
	@Override
	public List<EventPrize> eventPrizeList() {
		return eventPrizeDao.eventPrizeList();
	}

	@Override
	public List<EventPrize> eventPrizeRegist(EventPrize eventPrize) {
		return eventPrizeDao.eventPrizeRegist(eventPrize);
	}

}
