package com.tp.funding.controller;

import java.sql.Date;

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
import com.tp.funding.service.UsersService;

@Controller
public class LongController {
	@Autowired
	private FundingGoodsService fundingGoodsService;
	@Autowired
	private FundingDetailService fundingDetailService;
	@Autowired
	private UserPickService userPickService;
	@Autowired
	private UsersService usersService;

	// 펀드 리스트
	@RequestMapping(value = "fundList")
	public String fundList(Model model, String pageNum, String category) {
		// startRow endRow
		if (category.equals("fund")) {
			model.addAttribute("fundList", fundingGoodsService.investmentAllList(pageNum));
			model.addAttribute("category", "FUND");
		} else if (category.equals("reward")) {
			model.addAttribute("fundList", fundingGoodsService.rewardAllList(pageNum));
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
		model.addAttribute("investmentTop3", fundingGoodsService.investmentAllList(null));
		model.addAttribute("rewardTop3", fundingGoodsService.rewardAllList(null));
		return "main/main";
	}

	@RequestMapping(value = "userPick")
	public String userPick(String userId, int fundingCode, Model model) {
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
