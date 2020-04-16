package com.tp.funding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tp.funding.service.FundingGoodsService;

@Controller
public class LongController {
	@Autowired
	private FundingGoodsService fundingGoodsService;
	
	//펀드 리스트
	@RequestMapping(value ="fundList2")
	public String fundList(Model model) {
		model.addAttribute("fundList", fundingGoodsService.fundingSearchList(""));
		return "goods/fundList";
	}
}	
