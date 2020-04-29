package com.tp.funding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
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
	
	//로그인
	@RequestMapping(value = "loginView")
	public String login(String userId, String companyId, Model model) {
		
		if(userId != null && companyId == null) {
			model.addAttribute("userId", userId);
		}else if(companyId != null && userId == null) {
			model.addAttribute("companyId", companyId);
		}		
		
		return "users/login";
	}
	
	//회원가입 유형선택
	@RequestMapping(value ="join")
	public String join() {
		return "users/join";
	}

	//회원가입 완료
	@RequestMapping(value ="joinSuccess")
	public String joinSuccess() {
		return "users/joinSuccess";
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
	
	//이벤트 view
	@RequestMapping(value ="eventView")
	public String eventView() {
		return "event/eventView";
	}
		
}
