package com.tp.funding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	//admin login
	@RequestMapping(value ="adminLogin")
	public String adminLogin() {
		return "admin/adminLogin";
	}
		
//	//admin main
//	@RequestMapping(value ="adminMain")
//	public String adminMain() {
//		return "admin/adminMain";
//	}
	
//	//admin users list
//	@RequestMapping(value="adminUserList")
//	public String adminUserList() {
//		return "admin/users/list";
//	}
	
//	//admin users view
//	@RequestMapping(value="adminUserView")
//	public String adminUserView() {
//		return "admin/users/view";
//	}
	
//	//admin company list
//	@RequestMapping(value="adminCompanyList")
//	public String adminCompanyList() {
//		return "admin/company/list";
//	}
//		
//	//admin company view
//	@RequestMapping(value="adminCompanyView")
//	public String adminCompanyView() {
//		return "admin/company/view";
//	}
	
	//admin goods list
	@RequestMapping(value="adminGoodsList")
	public String adminGoodsList() {
		return "admin/goods/list";
	}
	//admin goods modify
	@RequestMapping(value="adminGoodsModify")
	public String adminGoodsModify() {
		return "admin/goods/modify";
	}
	
		
	//admin apply list
	@RequestMapping(value="adminApplyList")
	public String adminApplyList() {
		return "admin/apply/list";
	}
	//admin apply view
	@RequestMapping(value="adminApplyView")
	public String adminApplyView() {
		return "admin/apply/view";
	}
	
		
	//관리자 게시판 
	//admin event list
	@RequestMapping(value="adminEventList")
	public String adminEventList() {
		return "admin/event/list";
	}
	//admin event writeForm
	@RequestMapping(value="adminEventWriteForm")
	public String adminEventWriteForm() {
		return "admin/event/write";
	}
	//admin evnet write
	@RequestMapping(value="adminEventWrite")
	public String adminEventWrite() {
		return "admin/event/list";
	}
	//admin event modifyForm
	@RequestMapping(value="adminEventModifyForm")
	public String adminEventModifyForm() {
		return "admin/event/modify";
	}
	//admin event modify
	@RequestMapping(value="adminEventModify")
	public String adminEvenModify() {
		return "admin/event/list";
	}
	//admin event modify
	@RequestMapping(value="adminEventDelete")
	public String adminEvenDelete() {
		return "admin/event/list";
	}
	
//	//admin notice list
//	@RequestMapping(value="adminNoticeList")
//	public String adminNoticeList() {
//		return "admin/notice/list";
//	}
	//admin notice writeForm
	@RequestMapping(value="adminNoticeWriteForm")
	public String adminNoticeWriteForm() {
		return "admin/notice/write";
	}
	//admin notice write
	@RequestMapping(value="adminNoticeWrite")
	public String adminNoticeWrite() {
		return "admin/notice/list";
	}
	//admin notice modifyForm
	@RequestMapping(value="adminNoticeModifyForm")
	public String adminNoticeModifyForm() {
		return "admin/notice/modify";
	}
	//admin notice modify
	@RequestMapping(value="adminNoticeModify")
	public String adminNoticeModify() {
		return "admin/notice/list";
	}
	//admin notice delete
	@RequestMapping(value="adminNoticeDelete")
	public String adminNoticeDelete() {
		return "admin/notice/list";
	}
	
		
//	//admin qna list
//	@RequestMapping(value="adminQnaList")
//	public String adminQndList() {
//		return "admin/qna/list";
//	}
//	//admin qna view
	@RequestMapping(value="adminQnaView")
	public String adminQndView() {
		return "admin/qna/view";
	}
	//admin qna replyForm
	@RequestMapping(value="adminQnaReplyForm")
	public String adminQndReplyForm() {
		return "admin/qna/reply";
	}
	//admin qna reply
	@RequestMapping(value="adminQnaReply")
	public String adminQndReply() {
		return "admin/qna/list";
	}
	//admin qna reply modifyform
	@RequestMapping(value="adminQnaReplyModifyForm")
	public String adminQndReplyModifyForm() {
		return "admin/qna/modify";
	}
	//admin qna reply modify
	@RequestMapping(value="adminQnaReplyModify")
	public String adminQndReplyModify() {
		return "admin/qna/list";
	}
	//admin qna reply modify
	@RequestMapping(value="adminQnaDelete")
	public String adminQndDelete() {
		return "admin/qna/list";
	}
	
	
	
//	//admin goodsQna list
//	@RequestMapping(value="adminGoodsQnaList")
//	public String adminGoodsQnaList() {
//		return "admin/goodsQna/list";
//	}
	//admin goodsQna view
	@RequestMapping(value="adminGoodsQnaView")
	public String adminGoodsQndView() {
		return "admin/goodsQna/view";
	}
	//admin goodsQna replyForm
	@RequestMapping(value="adminGoodsQnaReplyForm")
	public String adminGoodsQndReplyForm() {
		return "admin/goodsQna/reply";
	}
	//admin goodsQna reply
	@RequestMapping(value="adminGoodsQnaReply")
	public String adminGoodsQndReply() {
		return "admin/goodsQna/list";
	}
	//admin goodsQna reply modifyform
	@RequestMapping(value="adminGoodsQnaReplyModifyForm")
	public String adminGoodsQndReplyModifyForm() {
		return "admin/goodsQna/modify";
	}
	//admin goodsQna reply modify
	@RequestMapping(value="adminGoodsQnaReplyModify")
	public String adminGoodsQndReplyModify() {
		return "admin/goodsQna/list";
	}
	//admin goodsQna reply modify
	@RequestMapping(value="adminGoodsQnaDelete")
	public String adminGoodsQndDelete() {
		return "admin/goodsQna/list";
	}
	

	
	
// Long	
//	//메인
//	@RequestMapping(value = "main")
//	public String home() {
//		return "main/main";
//	}
	
	//로그인
	@RequestMapping(value = "loginView")
	public String login() {
		return "users/login";
	}
	
	//회원가입 유형선택
	@RequestMapping(value ="join")
	public String join() {
		return "users/join";
	}

// hyuck
//	//회원가입 입력 폼
//	@RequestMapping(value ="joinForm")
//	public String joinForm() {
//		return "users/joinForm";
//	}
	
	//회원가입 완료
	@RequestMapping(value ="joinSuccess")
	public String joinSuccess() {
		return "users/joinSuccess";
	}
	
	//펀딩 신청 폼
	@RequestMapping(value="fundingApplyForm")
	public String fundingApplyForm() {
		return "funding/fundingApplyForm";
	}
	
	//펀딩 신청 폼
	@RequestMapping(value="fundingApply")
	public String fundingApply() {
		return "main/main";
	}
	
// Long
//	//펀드 리스트
//	@RequestMapping(value ="fundList")
//	public String fundList() {
//		return "goods/fundList";
//	}
	
// 펀드 리스트로 통합
//	//리워드 리스트
//	@RequestMapping(value ="rewardList")
//	public String rewardList() {
//		return "goods/rewardList";
//	}
	
// Long	
//	//펀드, 리워드 상세보기(정보)
//	@RequestMapping(value ="goodsViewCoreInfomation")
//	public String goodsViewCoreInfomation() {
//		return "goods/goodsViewCoreInfomation";
//	}
	
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
	
	//펀드, 리워드 상세보기(새소식)
	@RequestMapping(value ="goodsNewsView")
	public String goodsNewsView() {
		return "goods/goodsNewsView";
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
	
	//이벤트 리스트
	@RequestMapping(value ="eventList")
	public String eventList() {
		return "event/eventList";
	}
	
	//이벤트 view
	@RequestMapping(value ="eventView")
	public String eventView() {
		return "event/eventView";
	}
	
	//Q&A 리스트
	@RequestMapping(value ="qnaList")
	public String qnaList() {
		return "qna/qnaList";
	}	
	//Q&A view
	@RequestMapping(value ="qnaView")
	public String qnaView() {
		return "qna/qnaView";
	}
	//Q&A 작성 form
	@RequestMapping(value ="qnaWriteForm")
	public String qnaWriteForm() {
		return "qna/qnaWrite";
	}
	//Q&A 작성
	@RequestMapping(value ="qnaWrite")
	public String qnaWrite() {
		return "qna/qnaView";
	}
	//Q&A 수정 form
	@RequestMapping(value ="qnaModifyForm")
	public String qnaModifyForm() {
		return "qna/qnaModify";
	}
	//Q&A 수정
	@RequestMapping(value ="qnaModify")
	public String qnaModify() {
		return "qna/qnaView";
	}		
	//Q&A 삭제
	@RequestMapping(value ="qnaDelete")
	public String noticeDelete() {
		return "qna/qnaList";
	}
	
	//공지 리스트
	@RequestMapping(value ="noticeList")
	public String noticeList() {
		return "notice/noticeList";
	}
		
	//공지 view
	@RequestMapping(value ="noticeView")
	public String noticeView() {
		return "notice/noticeView";
	}
}
