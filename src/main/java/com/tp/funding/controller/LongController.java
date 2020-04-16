package com.tp.funding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tp.funding.dto.FundingGoodsDetail;
import com.tp.funding.service.FundingDetailService;
import com.tp.funding.service.FundingGoodsService;

@Controller
public class LongController {
	@Autowired
	private FundingGoodsService fundingGoodsService;
	private FundingDetailService fundingDetailService;
	
	//펀드 리스트
	@RequestMapping(value ="fundList")
	public String fundList(Model model,String pageNum,String category) {
		//startRow endRow
		if(category.equals("fund")) {
			model.addAttribute("fundList", fundingGoodsService.investmentAllList(pageNum));
			model.addAttribute("category", "FUND");
		}else if(category.equals("reward")) {
			model.addAttribute("fundList", fundingGoodsService.rewardAllList(pageNum));
			model.addAttribute("category", "REWARD");
		}
		return "goods/fundList";
	}
	
	@RequestMapping(value ="fundSearchList")
	public String fundSearchList(Model model,String searchWord) {
			model.addAttribute("fundList", fundingGoodsService.fundingSearchList(searchWord));
		return "message/fundSearchList";
	}
	@RequestMapping(value ="goodsViewCoreInfomation")
	public String goodsViewCoreInfomation(Model model,int fundingCode,String pageNum) {
		FundingGoodsDetail fundingGoodsDetail = new FundingGoodsDetail();
		fundingGoodsDetail.setFundingCode(fundingCode);
		model.addAttribute("userList", fundingDetailService.doFundingUserList(pageNum, fundingCode));
		model.addAttribute("good",fundingGoodsService.fundingDetail(fundingCode));
		return "goods/goodsViewCoreInfomation";
	}
	//메인
	@RequestMapping(value = "main")
	public String main(Model model) {
		model.addAttribute("investmentTop3", fundingGoodsService.investmentAllList(null));
		model.addAttribute("rewardTop3", fundingGoodsService.rewardAllList(null));
		
		return "main/main";
	}
	
}	
