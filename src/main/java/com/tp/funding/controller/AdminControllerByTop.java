package com.tp.funding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tp.funding.service.CompanyService;
import com.tp.funding.service.UsersService;

@Controller
public class AdminControllerByTop {
	@Autowired
	UsersService uService;
	@Autowired
	CompanyService cService;
	//관리자 페이지 이동
	@RequestMapping(value ="adminMain")
	public String adminMain() {
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
	
