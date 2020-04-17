package com.tp.funding.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tp.funding.dto.FundingGoodsDetail;
import com.tp.funding.dto.Users;
import com.tp.funding.service.FundingDetailService;
import com.tp.funding.service.FundingGoodsService;
import com.tp.funding.service.UserPickService;

@Controller
public class LongController {
	@Autowired
	private FundingGoodsService fundingGoodsService;
	@Autowired
	private FundingDetailService fundingDetailService;
	@Autowired
	private UserPickService userPickService;
	
	
	
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
	public String goodsViewCoreInfomation(Model model,int fundingCode,String pageNum,HttpSession session) {
		FundingGoodsDetail fundingGoodsDetail = new FundingGoodsDetail();
		fundingGoodsDetail.setFundingCode(fundingCode);
		model.addAttribute("userList", fundingDetailService.doFundingUserList(pageNum, fundingCode));
		model.addAttribute("good",fundingGoodsService.fundingDetail(fundingCode));
		//찜 추가 여부 확인
		if(session.getAttribute("user")!=null) {
			String userId = ((Users)session.getAttribute("user")).getUserId();
			if(userPickService.userPickCheck(userId, fundingCode)==1) {
				model.addAttribute("userAlreadyPick",true);
			}
		}
		return "goods/goodsViewCoreInfomation";
	}
	//메인
	@RequestMapping(value = "main")
	public String main(Model model) {
		model.addAttribute("investmentTop3", fundingGoodsService.investmentAllList(null));
		model.addAttribute("rewardTop3", fundingGoodsService.rewardAllList(null));
		return "main/main";
	}
	@RequestMapping(value = "userPick")
	public String userPick(String userId,int fundingCode,Model model) {
		if(userPickService.userPickCheck(userId, fundingCode)==1) { // 이미 찜 추가 했으면 찜 삭제
			userPickService.userPickDelete(userId, fundingCode);
			model.addAttribute("userPickResult", false); //찜 삭제
		}else {// 찜 추가 안했으면 찜 추가로직
			userPickService.userPickAdd(userId, fundingCode);
			model.addAttribute("userPickResult", true);
		}
		return "message/userPickResult";
	}
}	
