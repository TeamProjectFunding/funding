package com.tp.funding.controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

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
			model.addAttribute("goods", fundingGoodsService.investmentOpenList(pageNum, model));
			model.addAttribute("category", "FUND");
		} else if (category.equals("reward")) {
			model.addAttribute("goods", fundingGoodsService.rewardOpenList(pageNum, model));
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
		model.addAttribute("investmentTop3", fundingGoodsService.investmentAllList(null, null));
		model.addAttribute("rewardTop3", fundingGoodsService.rewardAllList(null, null));
		return "main/main";
	}

	@RequestMapping(value = "userPick")
	public String userPick(int fundingCode, Model model, HttpSession session) {
		String userId = ((Users) session.getAttribute("user")).getUserId();
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

	// 펀딩 신청 폼
	@RequestMapping(value = "fundingApplyForm")
	public String fundingApplyForm() {
		repeatF5 = true;
		return "funding/fundingApplyForm";
	}

	// 펀딩(리워드) 신청
	@RequestMapping(value = "fundingApply")
	public String fundingApply(FundingGoods goods, MultipartHttpServletRequest mRequest, Model model) {
		System.out.println(goods);
		String[] rewardName = mRequest.getParameterValues("rewardName");
		System.out.println("goodsName=" + rewardName);
		for (String i : rewardName) {
			System.out.println(i);
		}
		return "funding/applyNext";
	}

	// 펀딩하기 Step1
	@RequestMapping(value = "fundingStep1")
	public String fundingStep1() {
		return "funding/fundingStep1";
	}

	// 펀딩하기 Step2
	@RequestMapping(value = "fundingStep2")
	public String fundingStep2(int fundingCode, Model model) {
		model.addAttribute("good", fundingGoodsService.fundingDetail(fundingCode));
		model.addAttribute("rewardList", rewardService.fundingRewardList(fundingCode));
		return "funding/fundingStep2";
	}

	// 리워드 select ajax
	@RequestMapping(value = "selectRewardProduct")
	public String selectRewardProduct(int rewardCode, Model model) {
		Reward reward = rewardService.rewardDetail(rewardCode);
		model.addAttribute("rewardProduct", reward.getRewardImage());
		return "message/rewardProduct";
	}
	@RequestMapping(value = "selectRewardDeliveryDate")
	public String selectRewardDeliveryDate(int rewardCode, Model model) {
		Reward reward = rewardService.rewardDetail(rewardCode);
		model.addAttribute("rewardDeliveryDate", reward.getFundingRewardDeliveryDate());
		return "message/rewardDeliveryDate";
	}
	@RequestMapping(value = "setRewardCondition")
	public String setRewardCondition(int rewardCode, Model model) {
		Reward reward = rewardService.rewardDetail(rewardCode);
		model.addAttribute("rewardCondition", reward.getRewardCondition());
		return "message/rewardCondition";
	}
	@RequestMapping(value = "setRewardCode")
	public String setRewardCode(int fundingCode, Model model) {
		model.addAttribute("rewardList", rewardService.fundingRewardList(fundingCode));
		return "message/rewardCode";
	}

	// 펀딩하기 Step3
	@RequestMapping(value = "fundingComplate")
	public String fundingComplate(FundingGoodsDetail fundingGoodsDetail,String userId, int fundingCategory,
			HttpServletRequest request, HttpSession session, Model model) {
		int fundingCode = fundingGoodsDetail.getFundingCode();
		int changeMoneyAmount = fundingGoodsDetail.getFundingAmount();
		int rewardCode = 0;
		if (fundingCategory == 0) { // 투자
			rewardCode = rewardService.fundingRewardList(fundingCode).get(0).getRewardCode();
			usersService.userInvestmentAmountModify(userId, changeMoneyAmount); // 유저 누적투자금 증가
			
			
			
		} else if (fundingCategory == 1) { // 리워드
			rewardCode = Integer.parseInt(request.getParameter("rewardCode"));
			Reward reward = rewardService.rewardDetail(rewardCode);
			fundingGoodsDetail.setFundingAmount(reward.getRewardCondition());
			changeMoneyAmount = reward.getRewardCondition();
			changeMoneyAmount += fundingGoodsDetail.getFundingRewardAddDonation();
		}
		fundingGoodsDetail.setUserId(userId);
		fundingDetailService.fundingGoodsDetailWrite(fundingGoodsDetail); // 펀딩 디테일 생성
		fundingGoodsService.fundingBalancePlus(fundingCode, changeMoneyAmount); //펀딩 누적 잔액 ++
		fundingGoodsService.fundingPeopleCountUp(fundingCode); // 펀딩한 사람 추가
		fundingGoodsService.fundingTargetRateModify(fundingCode); // 펀딩 달성 % 변경
		usersService.userBalanceModify(userId, changeMoneyAmount * -1); // 유저 계좌잔액 감소
		Users user = usersService.userDetail(userId);
		if(user.getUserGradeNo() != usersService.userCurrentGrade(userId)) {// 등급업 기준 확인
			usersService.userGradeUp(userId); //등급 업
		}
		session.setAttribute("user", usersService.userDetail(userId)); //session에 유저 다시 추가
		model.addAttribute("good", fundingGoodsService.fundingDetail(fundingCode));
		Reward reward = rewardService.rewardDetail(rewardCode);
		model.addAttribute("reward", reward);
		Date targetDate = fundingGoodsDetail.getFundingTargetDate();
		System.out.println(targetDate.toString());
		int period = reward.getFundingInvestmentPeriod()*30;
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
