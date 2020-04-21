package com.tp.funding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tp.funding.dto.Notice;
import com.tp.funding.service.NoticeService;
import com.tp.funding.util.Paging;

@Controller
public class NoticeControllerByTop {
	@Autowired
	NoticeService noticeService;
	//메인 페이지에서 공지사항 리스트
	@RequestMapping(value="noticeList")
	public String noticeList(Model model, String pageNum, Notice notice) {
		Paging noticePaging = new Paging(noticeService.totSearchList(notice), pageNum, 5, 5);
		model.addAttribute("paging", noticePaging);
		model.addAttribute("noticeSearchList", noticeService.noticeSearchList(pageNum, notice));
		return "notice/noticeList";
	}
}
