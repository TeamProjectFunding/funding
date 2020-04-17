package com.tp.funding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tp.funding.dto.QnA;
import com.tp.funding.service.CompanyService;
import com.tp.funding.service.EventService;
import com.tp.funding.service.NoticeService;
import com.tp.funding.service.QnAService;
import com.tp.funding.service.UsersService;

@Controller
public class AdminControllerByTop {
	@Autowired
	UsersService uService;   //유저 리스트뿌리려고
	@Autowired
	CompanyService cService; //회사 리스트뿌리려고
	@Autowired
	NoticeService nService;
	@Autowired
	EventService eService;
	@Autowired
	QnAService qService;
	//관리자 페이지 이동
	@RequestMapping(value ="adminMain")
	public String adminMain(Model model) {
		/*이벤트 페이징 처리  ServiceImpl 이랑 Dao랑 같이보셈!!
		 * Paging eventPaging = new Paging(eService.totEvent(), pageNum, 5, 5);
		 * model.addAttribute("paging", eventPaging);
		 * model.addAttribute("eventDoingList", eService.eventDoingList(pageNum));
		 */
		for(QnA q:qService.qnAAdminList()) {
			System.out.println(q);
		}
		model.addAttribute("qnAAdminList", qService.qnAAdminList());
		model.addAttribute("eventAllList", eService.eventAllList()); //이벤트리스트 전체
		model.addAttribute("noticeList", nService.noticeList());	//공지사항리스트 전체
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
}
	
