package com.tp.funding.controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tp.funding.dto.Company;
import com.tp.funding.dto.FundingGoods;
import com.tp.funding.dto.FundingGoodsDetail;
import com.tp.funding.dto.Reward;
import com.tp.funding.dto.Users;
import com.tp.funding.service.FundingDetailService;
import com.tp.funding.service.FundingGoodsService;
import com.tp.funding.service.RewardService;
import com.tp.funding.service.UserPickService;
import com.tp.funding.service.UsersService;

@Controller
public class LongController {
	private boolean repeatF5 = false;
	@Autowired
	private FundingGoodsService fundingGoodsService;
	@Autowired
	private FundingDetailService fundingDetailService;
	@Autowired
	private UserPickService userPickService;
	@Autowired
	private UsersService usersService;
	@Autowired
	private RewardService rewardService;
	
	
	// 펀드 리스트
	@RequestMapping(value = "fundList")
	public String fundList(Model model, String pageNum, String category) {
		// startRow endRow
		if (category.equals("fund")) {
			model.addAttribute("goods", fundingGoodsService.investmentOpenList(pageNum,model));
			model.addAttribute("category", "FUND");
		} else if (category.equals("reward")) {
			model.addAttribute("goods", fundingGoodsService.rewardOpenList(pageNum,model));
			model.addAttribute("category", "REWARD");
		}
		return "goods/fundList";
	}

	@RequestMapping(value = "fundSearchList")
	public String fundSearchList(Model model, String searchWord) {
		model.addAttribute("fundList", fundingGoodsService.fundingSearchList(searchWord));
		return "message/fundSearchList";
	}

	@RequestMapping(value = "goodsViewCoreInfomation")
	public String goodsViewCoreInfomation(Model model, int fundingCode, String pageNum, HttpSession session) {
		FundingGoodsDetail fundingGoodsDetail = new FundingGoodsDetail();
		fundingGoodsDetail.setFundingCode(fundingCode);
		model.addAttribute("userList", fundingDetailService.doFundingUserList(pageNum, fundingCode));
		model.addAttribute("good", fundingGoodsService.fundingDetail(fundingCode));
		// 찜 추가 여부 확인
		if (session.getAttribute("user") != null) {
			String userId = ((Users) session.getAttribute("user")).getUserId();
			if (userPickService.userPickCheck(userId, fundingCode) == 1) {
				model.addAttribute("userAlreadyPick", true);
			}
		}
		return "goods/goodsViewCoreInfomation";
	}

	// 메인
	@RequestMapping(value = "main")
	public String main(Model model) {
		model.addAttribute("investmentTop3", fundingGoodsService.investmentAllList(null,null));
		model.addAttribute("rewardTop3", fundingGoodsService.rewardAllList(null,null));
		return "main/main";
	}

	@RequestMapping(value = "userPick")
	public String userPick(int fundingCode, Model model,HttpSession session) {
		String userId = ((Users)session.getAttribute("user")).getUserId();
		if (userPickService.userPickCheck(userId, fundingCode) == 1) { // 이미 찜 추가 했으면 찜 삭제
			userPickService.userPickDelete(userId, fundingCode);
			model.addAttribute("userPickResult", false); // 찜 삭제
		} else {// 찜 추가 안했으면 찜 추가로직
			userPickService.userPickAdd(userId, fundingCode);
			model.addAttribute("userPickResult", true);
		}
		return "message/userPickResult";
	}

	@RequestMapping(value = "kakaoLogin")
	public String kakaoLogin(Model model) {
		return "loginApi/kakaoLogin";
	}

	@RequestMapping(value = "userInvestment.do")
	public String userInvestment(Model model, String userId, int fundingCode, Date fundingTargetDate,
			int fundingAmount) {
		FundingGoodsDetail fundingGoodsDetail = new FundingGoodsDetail();
		fundingGoodsDetail.setUserId(userId);
		fundingGoodsDetail.setFundingCode(fundingCode);
		fundingGoodsDetail.setFundingTargetDate(fundingTargetDate);
		fundingGoodsDetail.setFundingAmount(fundingAmount);
		// 펀딩디테일 추가
		fundingDetailService.fundingGoodsDetailWrite(fundingGoodsDetail);
		usersService.userBalanceModify(userId, fundingAmount * -1); // 유저 계좌잔액 감소
		usersService.userInvestmentAmountModify(userId, fundingAmount); // 유저 누적투자금 증가
		fundingGoodsService.fundingBalancePlus(fundingCode, fundingAmount); // 펀딩상품 계좌에 금액증가
		fundingGoodsService.fundingTargetRateModify(fundingCode);
		return "funding/fundingResult";
	}

	
	//펀딩 신청 폼
	@RequestMapping(value="fundingApplyForm")
	public String fundingApplyForm() {
		repeatF5 = true;
		return "funding/fundingApplyForm";
	}
	
	//펀딩(리워드) 신청
	@RequestMapping(value="fundingApply")
	public String fundingApply(FundingGoods goods,MultipartHttpServletRequest mRequest, Model model) {
		System.out.println(goods);
		String[] rewardName = mRequest.getParameterValues("rewardName");
		System.out.println("goodsName="+rewardName);
		for(String i : rewardName) {
			System.out.println(i);
		}
		return "funding/applyNext";
	}
	
	//펀딩하기 Step1
	@RequestMapping(value ="fundingStep1")
	public String fundingStep1() {
		return "funding/fundingStep1";
	}
	
	//펀딩하기 Step2
	@RequestMapping(value ="fundingStep2")
	public String fundingStep2(int fundingCode, Model model) {
		model.addAttribute("good", fundingGoodsService.fundingDetail(fundingCode));
		model.addAttribute("rewardList", rewardService.fundingRewardList(fundingCode));
		return "funding/fundingStep2";
	}
	//리워드 select ajax
	@RequestMapping(value ="selectReward")
	public String selectReward(int rewardCode, Model model) {
		System.out.println("일로옴");
		Reward reward = rewardService.rewardDetail(rewardCode);
		System.out.println(reward);
		JSONObject selectReward = new JSONObject();
		selectReward.put("rewardProduct", reward.getRewardImage());
		selectReward.put("rewardDeliveryDate", reward.getFundingRewardDeliveryDate());
		model.addAttribute("rewardProduct",reward.getRewardImage());
		model.addAttribute("rewardDeliveryDate",reward.getFundingRewardDeliveryDate());
		return "message/rewardDetail";
	}
	
	//펀딩하기 Step3
	@RequestMapping(value ="fundingComplate")
	public String fundingComplate(FundingGoodsDetail fundingGoodsDetail,int rewardCode,int fundingCategory,HttpServletRequest request,Model model) {
		int fundingCode = fundingGoodsDetail.getFundingCode();
		int changeAccountBalance = 0;
		if(fundingCategory == 0) { //투자
			int fundingAmount = Integer.parseInt(request.getParameter("fundingAmount"));
			fundingGoodsDetail.setFundingAmount(fundingAmount);
		}else if(fundingCategory == 1) { //리워드
			int fundingRewardAddDonation = Integer.parseInt(request.getParameter("fundingRewardAddDonation"));
			fundingGoodsDetail.setFundingRewardAddDonation(fundingRewardAddDonation);
		}
		fundingDetailService.fundingGoodsDetailWrite(fundingGoodsDetail); //펀딩 디테일 생성
//		fundingGoodsService.fundingBalancePlus(fundingCode, changeAccountBalance)
		
		model.addAttribute("good", fundingGoodsService.fundingDetail(fundingCode));
		model.addAttribute("rewardCode", rewardService.rewardDetail(rewardCode));
		model.addAttribute("fundingGoodsDetail", fundingGoodsDetail);
		
		return "funding/fundingComplate";
	}
		
	// 네이버 로그인 콜백
	@RequestMapping(value = "naverCallback")
	public String naverCollback() {
		return "loginApi/naverLogin";
	}

	// 네이버 로그인 필요
	@RequestMapping(value = "loginPostNaver")
	public String loginPOSTNaver(HttpSession session) {
		return "users/loginPostNaver";
	}
}
