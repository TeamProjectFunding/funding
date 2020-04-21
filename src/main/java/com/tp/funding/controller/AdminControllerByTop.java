package com.tp.funding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tp.funding.dto.FundingGoods;
import com.tp.funding.service.CompanyService;
import com.tp.funding.service.EventService;
import com.tp.funding.service.FundingGoodsService;
import com.tp.funding.service.FundingQuestionService;
import com.tp.funding.service.NoticeService;
import com.tp.funding.service.QnAService;
import com.tp.funding.service.UsersService;
import com.tp.funding.util.Paging;

@Controller
public class AdminControllerByTop {
	@Autowired
	UsersService uService;   //유저 서비스
	@Autowired
	CompanyService cService; //회사 서비스
	@Autowired
	NoticeService nService;  //공지사항 서비스
	@Autowired
	EventService eService;   //이벤트  서비스
	@Autowired
	QnAService qService;     //질문 서비스
	@Autowired
	FundingGoodsService fService; //상품 서비스
	@Autowired
	FundingQuestionService fqService; //상품문의 서비스
	
	//관리자 페이지 이동
	@RequestMapping(value ="adminMain")
	public String adminMain(Model model, FundingGoods fundingGoods) {
		model.addAttribute("qnAAdminList", qService.qnAAdminList());
		model.addAttribute("eventAllList", eService.eventAllList()); //이벤트리스트 전체
		model.addAttribute("noticeList", nService.noticeList());	//공지사항리스트 전체
		model.addAttribute("fundingReadyList", fService.fundingReadyList(fundingGoods)); // 승인 대기중인 리스트		
		
		return "admin/adminMain";
	}
	//관리자 페이지 user
	@RequestMapping(value="adminUserList")
	public String adminUserSearchList(Model model,String searchUserName) {
		model.addAttribute("userSearchList", uService.userSearchList(searchUserName));
		return "admin/users/list";
	}
	//관리자 페이지 user상세보기
	@RequestMapping(value="adminUserDetailView")
	public String adminUserDetailView(Model model, String userId) {
		model.addAttribute("user", uService.userDetail(userId));
		return "admin/users/view";
	}
	//관리자 user상세페이지 user비활성화
	@RequestMapping(value="adminUserOutSite")
	public String adminUserOutSite(Model model, String userId) {
		model.addAttribute("userOutSiteResult", uService.userOutSite(userId));
		return "forward:adminUserList.do";
	}
	//관리자 페이지 company
	@RequestMapping(value="adminCompanyList")
	public String adminCompanyList(Model model, String companyName) {
		model.addAttribute("companySearchList", cService.companySearchList(companyName));
		return "admin/company/list";
	}
	//관리자 company 상세보기
	@RequestMapping(value="adminCompanyDetailView")
	public String adminCompanyDetailView(Model model, String companyId) {
		model.addAttribute("company", cService.companyDetail(companyId));
		return "admin/company/view";
	}
	//관리자 company상세페이지 company비활성화
	@RequestMapping(value="adminCompanyOutSite")
	public String adminCompanyOutSite(Model model, String companyId) {
		model.addAttribute("companyOutSiteResult", cService.companyOutSite(companyId));
		return "forward:adminCompanyList.do";
	}
	//관리자 왼쪽바 NOTICE 페이징
	@RequestMapping(value="adminNoticeList")
	public String adminNoticeList(Model model, String pageNum) {
		Paging noticePaging = new Paging(nService.totNotice(), pageNum, 5, 5);
		model.addAttribute("paging", noticePaging);
		model.addAttribute("noticeListP", nService.noticeListP(pageNum));
		return "admin/notice/list";
	}
	//관리자 왼쪽바 QnA 페이징
	@RequestMapping(value="adminQnaList")
	public String adminQnaList(Model model, String pageNum) {
		Paging qnAPaging = new Paging(qService.totQnA(), pageNum, 5, 5);
		model.addAttribute("paging", qnAPaging);
		model.addAttribute("qnAList", qService.qnAList(pageNum));
		return "admin/qna/list";
	}
	//관리자 왼쪽바 상품문의 페이징
	@RequestMapping(value="adminGoodsQnaList")
	public String adminGoodsQnaList(Model model, String pageNum) {
		Paging fundingQuestion = new Paging(fqService.totfundingQuestion(), pageNum, 5, 5) ;
		model.addAttribute("paging", fundingQuestion);
		model.addAttribute("fundingQuestionList", fqService.fundingQuestionList(pageNum));
		return "admin/goodsQna/list";
	}
	//관리자 왼쪽바 이벤트 페이징
	@RequestMapping(value="adminEventList")
	public String adminEventList(Model model, String pageNum) {
		Paging eventPaging = new Paging(eService.totEvent(), pageNum, 5, 5);
		model.addAttribute("paging", eventPaging);
		model.addAttribute("eventAdminList", eService.eventAdminList(pageNum));
		return "admin/event/list";
	}
	//혁 컨트롤러에서 가져옴 
	@RequestMapping(value="adminApply")
	public String adminApply(int fundingCode, Model model) {
		fService.fundingAdminPermitYes(fundingCode);
		model.addAttribute("adminApplyMsg", "apply 완료");
				
		return "forward:adminMain.do";
	}
}
	
