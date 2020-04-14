package com.tp.funding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.EventPrize;
@Repository
public class EventPrizeDaoImpl implements EventPrizeDao {
	@Autowired
	private SqlSession sessionTemplate;
	@Override
	public List<EventPrize> eventPrizeList() {
		return sessionTemplate.selectList("eventPrizeList");
	}

	@Override
	public List<EventPrize> eventPrizeRegist(EventPrize eventPrize) {
		return sessionTemplate.selectList("eventPrizeRegist", eventPrize);
	}

}
