package com.tp.funding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tp.funding.dto.Event;
import com.tp.funding.service.EventService;
import com.tp.funding.util.Paging;

@Controller
public class EventControllerByTop {
	@Autowired
	EventService eventService;
	@RequestMapping(value ="eventList")
	public String eventList(Model model, String pageNum, Event event) {
		Paging eventPaging = new Paging(eventService.totDoingEvent(event), pageNum, 6, 5);
		model.addAttribute("paging", eventPaging);
		model.addAttribute("eventSearchList", eventService.eventDoingList(pageNum, event));
		return "event/eventList";
	}
}
