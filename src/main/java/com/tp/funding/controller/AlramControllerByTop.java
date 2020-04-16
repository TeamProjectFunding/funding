package com.tp.funding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tp.funding.dto.Notification;
import com.tp.funding.service.NotificationService;

@Controller
public class AlramControllerByTop {
	@Autowired
	private NotificationService nService;
	
	@RequestMapping(value="userAlarmCheck")
		public String userAlarmCheck(Model model, String userId){
		model.addAttribute("notificationUnReadUserList", nService.notificationUnReadUserList(userId));
		model.addAttribute("userId", "user7");
		return "main/alarm";
	}
	@RequestMapping(value="companyAlarmCheck")
	public String companyAlarmCheck(Model model, String companyId) {
		model.addAttribute("otificationUnReadCompanyList", nService.notificationUnReadCompanyList(companyId));
		return "main/alarm";
	}
}

