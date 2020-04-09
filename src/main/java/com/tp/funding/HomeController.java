package com.tp.funding;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
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
	@RequestMapping(value ="fundingList")
	public String fundingList() {
		return "funding/fundingList";
	}
	
	//리워드 리스트
	@RequestMapping(value ="rewardList")
	public String rewardList() {
		return "funding/rewardList";
	}
	
	//펀드, 리워드 상세보기(정보)
	@RequestMapping(value ="fundingViewCoreInfomation")
	public String fundingViewCoreInfomation() {
		return "funding/fundingViewCoreInfomation";
	}
	
	//펀드, 리워드 상세보기(투자위험)
	@RequestMapping(value ="fundingViewRisk")
	public String fundingViewRisk() {
		return "funding/fundingViewRisk";
	}
	
	//펀드, 리워드 상세보기(새소식)
	@RequestMapping(value ="fundingViewNews")
	public String fundingViewNews() {
		return "funding/fundingViewNews";
	}
	
	//펀드, 리워드 상세보기(토론)
	@RequestMapping(value ="fundingViewDebate")
	public String fundingViewDebate() {
		return "funding/fundingViewDebate";
	}
	
	//펀드, 리워드 상세보기(투자자)
	@RequestMapping(value ="fundingViewInvestor")
	public String fundingViewInvestor() {
		return "funding/fundingViewInvestor";
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
	@RequestMapping(value ="fundingStep3")
	public String fundingStep3() {
		return "funding/fundingStep3";
	}
}
