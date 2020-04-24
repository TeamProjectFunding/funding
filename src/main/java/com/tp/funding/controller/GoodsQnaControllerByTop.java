package com.tp.funding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tp.funding.service.FundingQuestionService;
import com.tp.funding.util.Paging;

@Controller
public class GoodsQnaControllerByTop {
	@Autowired
	FundingQuestionService fundingQuestionService;
	@RequestMapping(value="goodsQnaList")
	public String goosQnaList(Model model, String pageNum, int fundingCode) {
		Paging fundingQuestion = new Paging(fundingQuestionService.totGoodsQuesttionList(fundingCode), pageNum, 5, 5);
		model.addAttribute("paging", fundingQuestion);
		model.addAttribute("fundingQuestionList", fundingQuestionService.goodsQuesttionList(pageNum, fundingCode));
		System.out.println(fundingQuestionService.fundingQuestionList(pageNum).size());
		return "goodsQna/goodsQnaList";
	}
}
