package com.tp.funding.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tp.funding.dto.Company;
import com.tp.funding.dto.Users;
import com.tp.funding.service.CompanyService;
import com.tp.funding.service.NotificationService;
import com.tp.funding.service.UsersService;

@Controller
public class HyuckController {
	
	private boolean repeatF5 = false;
	
	@Autowired
	private UsersService usersService;

	@Autowired
	private CompanyService companyService;
	
	@Autowired
	private NotificationService notificationService;
	
	//회원가입 입력 폼
	@RequestMapping(value ="joinForm")
	public String joinForm(String method, Model model) {
		repeatF5 = true;
		model.addAttribute("method", method);
		return "users/joinForm";
	}
	
	@RequestMapping(value = "joinResult", method = RequestMethod.POST)
	public String joinResult(Users user, Company company, MultipartHttpServletRequest mRequest, Model model) {		
		
		if(repeatF5) {
			if (user.getUserId() != null && company.getCompanyId() == null) {
				
				int result = usersService.userJoin(mRequest, user);
				
				if (result == 1) {
					model.addAttribute("userJoinResult", "고객(일반) 가입 성공");				
					model.addAttribute("user", usersService.userDetail(user.getUserId()));
					System.out.println(user);
				} else {
					model.addAttribute("userJoinResult", "유저(일반) 가입 실패");
				}
				
			} else if (user.getUserId() == null && company.getCompanyId() != null) {			
				int result = companyService.companyJoin(mRequest, company);
				if (result == 1) {
					model.addAttribute("companyJoinResult", "고객(회사) 가입 성공");
					model.addAttribute("company", companyService.companyDetail(company.getCompanyId()));
				} else {
					model.addAttribute("companyJoinResult", "유저(회사) 가입 실패");
				}

			}
		}
		
		repeatF5 = false; 

		return "users/joinSuccess";
	}
		
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(HttpSession session, String id, String pw, Model model) {
		Users user = new Users();
		user.setUserId(id);
		user.setUserPassword(pw);
		Company company = new Company();
		company.setCompanyId(id);
		company.setCompanyPassword(pw);
		
		if(usersService.userLoginCheck(user) == 1) {
			
			session.setAttribute("user", usersService.userDetail(id));
			session.setAttribute("notificationUnReadUserList", notificationService.notificationUnReadUserList(id));
			
		}else if(companyService.companyLoginCheck(company) == 1) {
			
			session.setAttribute("company", companyService.companyDetail(id));
			session.setAttribute("notificationUnReadCompanyList", notificationService.notificationUnReadCompanyList(id));
			
		}else {		
					
			model.addAttribute("errorMessage", "등록되지 않은 아이디거나, 아이디 또는 비밀번호가 회원정보와 일치하지 않습니다.");
			
		}	
		
		return "forward:main.do";
	}
	
	@RequestMapping(value="idConfirm")
	public String idConfirm(String userId, String companyId, Model model) {	
		
		boolean idResult = true; // 사용가능
			if(usersService.userDetail(userId) != null || companyService.companyDetail(companyId) != null) {
				idResult = false;
			}
			
			if(idResult) {
				model.addAttribute("idConfirmResult", "가입가능");
			}else {
				model.addAttribute("idConfirmResult", "중복");
			}		
		
		return "message/idConfirm";
	}
	

	@RequestMapping(value = "loginApi")
	public String naverLogin(Model model,String loginApiId,HttpSession session) {
		if(usersService.userDetail(loginApiId) != null) {//이미 가입된 ID 유저인 경우 로그인
			session.setAttribute("user", usersService.userDetail(loginApiId));
			return "forward:main.do";
		}else if(companyService.companyDetail(loginApiId) != null) {//이미 회사 유저인 경우 로그인
			session.setAttribute("company", companyService.companyDetail(loginApiId));
			return "forward:main.do";
		}else {// API 로그인했지만 유저가 아닌경우 join화면으로 넘어가는 대신 파라미터값 가지고 가기
			model.addAttribute("loginApiId",loginApiId);
		}
		return "forward:join.do";
	}

	@RequestMapping(value="logout")
	public String logout(HttpSession session, Model model) {
			session.invalidate();
			model.addAttribute("logoutResult", "로그아웃 완료");
			
		return "forward:main.do";
	}
	


}
