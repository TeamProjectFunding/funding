package com.tp.funding.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tp.funding.dto.Company;
import com.tp.funding.dto.FundingGoods;
import com.tp.funding.dto.Notification;
import com.tp.funding.dto.QnA;
import com.tp.funding.dto.Users;
import com.tp.funding.service.CompanyService;
import com.tp.funding.service.FundingGoodsService;
import com.tp.funding.service.NotificationService;
import com.tp.funding.service.QnAService;
import com.tp.funding.service.RewardService;
import com.tp.funding.service.UsersService;
import com.tp.funding.util.Paging;

@Controller
public class HyuckController {

	private boolean repeatF5 = false;

	@Autowired
	private UsersService usersService;

	@Autowired
	private CompanyService companyService;

	@Autowired
	private NotificationService notificationService;
	
	@Autowired
	private FundingGoodsService fundingGoodsService;
	
	@Autowired
	private QnAService qnaService;	
	
	@Autowired
	private RewardService rewardService;
	

	// 회원가입 입력 폼
	@RequestMapping(value = "joinForm")
	public String joinForm(String method, Model model) {
		repeatF5 = true;
		model.addAttribute("method", method);
		return "users/joinForm";
	}

	@RequestMapping(value = "joinResult", method = RequestMethod.POST)
	public String joinResult(Users user, Company company, MultipartHttpServletRequest mRequest, Model model) {

		if (repeatF5) {

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

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(HttpSession session, String id, String pw, Model model) {
		Users user = new Users();
		user.setUserId(id);
		user.setUserPassword(pw);
		Company company = new Company();
		company.setCompanyId(id);
		company.setCompanyPassword(pw);

		if (usersService.userLoginCheck(user) == 1) {

			session.setAttribute("user", usersService.userDetail(id));
			session.setAttribute("notificationUnReadUserList", notificationService.notificationUnReadUserList(id));
			model.addAttribute("result", "성공");			

		} else if (companyService.companyLoginCheck(company) == 1) {

			session.setAttribute("company", companyService.companyDetail(id));
			session.setAttribute("notificationUnReadCompanyList", notificationService.notificationUnReadCompanyList(id));
			model.addAttribute("result", "성공");
		} else {

			model.addAttribute("errorMessage", "등록되지 않은 아이디거나, 아이디 또는 비밀번호가 회원정보와 일치하지 않습니다.");

		}

		return "forward:main.do";
	}

	@RequestMapping(value = "idConfirm")
	public String idConfirm(String userId, String companyId, Model model) {

		boolean idResult = true; // 사용가능
		if (usersService.userDetail(userId) != null || companyService.companyDetail(companyId) != null) {
			idResult = false;
		}

		if (idResult) {
			model.addAttribute("idConfirmResult", "가입가능");
		} else {
			model.addAttribute("idConfirmResult", "중복");
		}

		return "message/idConfirm";
	}

	@RequestMapping(value = "loginApi")
	public String naverLogin(Model model, String loginApiId, HttpSession session) {
		if (usersService.userDetail(loginApiId) != null) {// 이미 가입된 ID 유저인 경우 로그인
			session.setAttribute("user", usersService.userDetail(loginApiId));
			return "forward:main.do";
		} else if (companyService.companyDetail(loginApiId) != null) {// 이미 회사 유저인 경우 로그인
			session.setAttribute("company", companyService.companyDetail(loginApiId));
			return "forward:main.do";
		} else {// API 로그인했지만 유저가 아닌경우 join화면으로 넘어가는 대신 파라미터값 가지고 가기
			model.addAttribute("loginApiId", loginApiId);
		}
		return "forward:join.do";
	}

	@RequestMapping(value = "logout")
	public String logout(HttpSession session, Model model) {
		session.invalidate();
		model.addAttribute("logoutResult", "로그아웃 완료");

		return "forward:main.do";
	}

	@RequestMapping(value = "findPw")
	public String findPw(Users user, Company company, Model model) {
		
		if (usersService.userDetail(user.getUserId()) != null
				|| companyService.companyDetail(company.getCompanyId()) != null) {			

			if (usersService.userDetail(user.getUserId()) != null) {
				usersService.tempPasswordChange(user);
				model.addAttribute("findPwMsg", "해당 메일로 임시 비밀번호를 발송했습니다. 메일 확인 요망");

			}else if(companyService.companyDetail(company.getCompanyId()) != null) {
				companyService.tempPasswordChange(company);
				model.addAttribute("findPwMsg", "해당 메일로 임시 비밀번호를 발송했습니다. 메일 확인 요망");
			}

		} else {

			model.addAttribute("findPwMsg", "해당 아이디가 존재하지 않습니다.");
		}
		return "users/login";
	}
	@RequestMapping(value="adminApplyView")
	public String adminApplyView(int fundingCode, Model model) {
		
		model.addAttribute("fundingDetail", fundingGoodsService.fundingDetail(fundingCode));
		model.addAttribute("fundingDetailReward", rewardService.fundingRewardList(fundingCode));		
		
		return "admin/apply/view";
	}
	
	@RequestMapping(value="adminApplyList")
	public String adminApplyViewList(FundingGoods fundingGoods, String pageNum, Model model) {			
		
		Paging paging = new Paging(fundingGoodsService.totCntReadyList(), pageNum, 4, 5);
		fundingGoods.setStartRow(paging.getStartRow());
		fundingGoods.setEndRow(paging.getEndRow());
		model.addAttribute("fundingReadyList", fundingGoodsService.fundingReadyList(fundingGoods));
		model.addAttribute("paging", paging);
		return "admin/apply/list";
	}
	
	@RequestMapping("adminGoodsList")
	public String adminGoodsList(FundingGoods fundingGoods, String pageNum, Model model) {
		Paging paging = new Paging(fundingGoodsService.totCntOpenList(), pageNum, 4, 5);
		fundingGoods.setStartRow(paging.getStartRow());
		fundingGoods.setEndRow(paging.getEndRow());		
		model.addAttribute("adminGoodsList", fundingGoodsService.fundingOpenList(fundingGoods));
		model.addAttribute("paging", paging);
		
		return "admin/goods/list";
	}
	
	@RequestMapping("qnaList")
	public String qnaList(String pageNum, QnA qnA, Model model,String searchWord) {
		qnA.setWriter(searchWord); // 검색할 writer
		Paging paging = new Paging(qnaService.totCntSearchQnA(qnA), pageNum, 6, 5);
		qnA.setStartRow(paging.getStartRow());
		qnA.setEndRow(paging.getEndRow());
		model.addAttribute("qnaList", qnaService.qnAList(qnA));	
		model.addAttribute("paging", paging);
		
		return "qna/qnaList";
	}
	
	@RequestMapping(value ="qnaWriteForm")
	public String qnaWriteForm() {
		return "qna/qnaWrite";
	}
	
	@RequestMapping(value ="qnaWrite")
	public String qnaWrite(QnA qnA, Model model) {
		
		int result = qnaService.qnAWrite(qnA);
		if(result == 1) {
			model.addAttribute("writeResult", "문의 작성 완료!");
		}else {
			model.addAttribute("writeResult", "문의 작성 실패ㅠ");
		}
		
		return "forward:qnaList.do";
	}
	
	@RequestMapping(value ="qnaView")
	public String qnaView(QnA qnA, Model model) {
		
		qnaService.qnAHitUp(qnA.getQnANumber());
		model.addAttribute("qnaDetail", qnaService.qnADetail(qnA));
		
		return "qna/qnaView";
	}
	
	@RequestMapping(value ="qnaModifyForm")
	public String qnaModifyForm(QnA qnA, Model model) {
		
		model.addAttribute("qnaDetail", qnaService.qnADetail(qnA));
		
		return "qna/qnaModify";
	}
	
	@RequestMapping(value ="qnaModify")
	public String qnaModify(QnA qnA, Model model) {
		
		int Result = qnaService.qnAModify(qnA);
		
		if(Result == 1) {
			model.addAttribute("qnAModifyResult", "수정 성공");
		}else {
			model.addAttribute("qnAModifyResult", "수정 실패");
		}		
		
		return "forward:qnaList.do";
	}
	
	@RequestMapping(value ="adminLogin")
	public String adminLogin() {
		return "admin/adminLogin";
	}
	
	@RequestMapping(value="qnaReplyForm")
	public String adminQnaReplyForm(QnA qnA, Model model) {
		
		model.addAttribute("qnADetail", qnaService.qnADetail(qnA));		
		
		return "qna/qnaReply";
	}
	
	@RequestMapping(value="qnaReplyWrite")
	public String qnaReply(QnA qnA, Model model) {
		
		int result = qnaService.qnAReplyWrite(qnA);
		if(result == 1) {
			model.addAttribute("qnaReplyresult", "답글 작성 완료");
			qnaService.qnAReplyExistUp(qnA.getQnANumber());
			
		}else {
			model.addAttribute("qnaReplyresult", "답글 작성 실패");
		}		
		
		return "forward:qnaList.do";
	}
	
	@RequestMapping(value="adminQnaView")
	public String adminQndView(QnA qnA, Model model) {
		
		qnaService.qnAHitUp(qnA.getQnANumber());
		model.addAttribute("qnaDetail", qnaService.qnADetail(qnA));
		
		return "admin/qna/view";
		
	}
	
	@RequestMapping(value="adminQnaReplyForm")
	public String adminQndReplyForm(QnA qnA, Model model) {
		
		model.addAttribute("qnADetail", qnaService.qnADetail(qnA));
		
		return "admin/qna/reply";
	}
	
	@RequestMapping(value="adminQnaReply")
	public String adminQndReply(QnA qnA, Model model) {
		
		int result = qnaService.qnAReplyWrite(qnA);
		if(result == 1) {
			model.addAttribute("qnaReplyresult", "답글 작성 완료");
			qnaService.qnAReplyExistUp(qnA.getQnANumber());
			
		}else {
			model.addAttribute("qnaReplyresult", "답글 작성 실패");
		}		
		
		return "forward:adminMain.do";
	}	
	
	@RequestMapping(value = "adminQnaList")
	public String adminQnaList(QnA qnA, Model model, String pageNum) {
		
		Paging paging = new Paging(qnaService.totCntSearchQnA(qnA), pageNum, 6, 5);
		qnA.setStartRow(paging.getStartRow());
		qnA.setEndRow(paging.getEndRow());
		model.addAttribute("adminQnaList", qnaService.qnAList(qnA));	
		model.addAttribute("paging", paging);
		
		return "admin/qna/list";
	}
	
	
		@RequestMapping(value = "adminApply")
		public String adminApply(int fundingCode, Model model, Notification notification) {			
			fundingGoodsService.fundingAdminPermitYes(fundingCode);
			notification.setNotificationContent("귀사의 투자 신청이 승인 되었습니다.");
			notificationService.notificationWrite(notification);
			model.addAttribute("adminApplyMsg", "apply 완료");

			return "forward:adminMain.do";
		}
		
		@RequestMapping(value="adminReject")
		public String adminReject(int fundingCode, Model model, Notification notification) {
			fundingGoodsService.fundingAdminPermitNo(fundingCode);
			notification.setNotificationContent("귀사의 투자 신청이 거절 되었습니다.");
			System.out.println(notification);
			notificationService.notificationWrite(notification);
			model.addAttribute("adminRejectMsg", "reject 완료");
			return "forward:adminMain.do";
		}
		
		@RequestMapping(value="myPageMain")
		public String myPageMain(String userId, String companyId, Model model) {
			
			if(userId != null) {
				
				model.addAttribute("userDetail", usersService.userDetail(userId));
				
			}else if(companyId != null) {
				
				model.addAttribute("companyDetail", companyService.companyDetail(companyId));
			}
			
			return "myPage/myPageMain";
		}
		

}
