package com.tp.funding.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	//admin login
		@RequestMapping(value ="adminLogin")
		public String adminLogin() {
			return "admin/adminLogin";
		}
			
		//admin main
		@RequestMapping(value ="adminMain")
		public String adminMain() {
			return "admin/adminMain";
		}
		
		//admin users list
		@RequestMapping(value="adminUserList")
		public String adminUserList() {
			return "admin/users/list";
		}
		
		//admin users view
		@RequestMapping(value="adminUserView")
		public String adminUserView() {
			return "admin/users/view";
		}
		
		//admin company list
		@RequestMapping(value="adminCompanyList")
		public String adminCompanyList() {
			return "admin/company/list";
		}
			
		//admin company view
		@RequestMapping(value="adminCompanyView")
		public String adminCompanyView() {
			return "admin/company/view";
		}
		
		
		
		//메인
		@RequestMapping(value = "main")
		public String home() {
			return "main/main";
		}
		
		//로그인
		@RequestMapping(value = "login")
		public String login() {
			return "users/login";
		}
		
		//회원가입 유형선택
		@RequestMapping(value ="join")
		public String join() {
			return "users/join";
		}
		
		//회원가입 입력 폼
		@RequestMapping(value ="joinForm")
		public String joinForm() {
			return "users/joinForm";
		}
		
		//회원가입 완료
		@RequestMapping(value ="joinSuccess")
		public String joinSuccess() {
			return "users/joinSuccess";
		}
		
		//펀드 리스트
		@RequestMapping(value ="fundList")
		public String fundList() {
			return "goods/fundList";
		}
		
		//리워드 리스트
		@RequestMapping(value ="rewardList")
		public String rewardList() {
			return "goods/rewardList";
		}
		
		//펀드, 리워드 상세보기(정보)
		@RequestMapping(value ="goodsViewCoreInfomation")
		public String goodsViewCoreInfomation() {
			return "goods/goodsViewCoreInfomation";
		}
		
		//펀드, 리워드 상세보기(투자위험)
		@RequestMapping(value ="goodsViewRisk")
		public String fundViewRisk() {
			return "goods/goodsViewRisk";
		}
		
		//펀드, 리워드 상세보기(새소식)
		@RequestMapping(value ="goodsViewNews")
		public String goodsViewNews() {
			return "goods/goodsViewNews";
		}
		
		//펀드, 리워드 상세보기(토론)
		@RequestMapping(value ="goodsViewDebate")
		public String goodsViewDebate() {
			return "goods/goodsViewDebate";
		}
		
		//펀드, 리워드 상세보기(투자자)
		@RequestMapping(value ="goodsViewInvestor")
		public String goodsViewInvestor() {
			return "goods/goodsViewInvestor";
		}
		
		//펀딩하기 Step1
		@RequestMapping(value ="fundingStep1")
		public String fundingStep1() {
			return "funding/fundingStep1";
		}
		
		//펀딩하기 Step2
		@RequestMapping(value ="fundingStep2")
		public String fundingStep2() {
			return "funding/fundingStep2";
		}
			
		//펀딩하기 Step3
		@RequestMapping(value ="fundingComplate")
		public String fundingComplate() {
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
