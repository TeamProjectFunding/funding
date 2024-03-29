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
import com.tp.funding.dto.UserPick;
import com.tp.funding.dto.Users;
import com.tp.funding.service.CompanyService;
import com.tp.funding.service.FgCommentsService;
import com.tp.funding.service.FundingGoodsService;
import com.tp.funding.service.FundingQuestionReplyService;
import com.tp.funding.service.FundingQuestionService;
import com.tp.funding.service.NotificationService;
import com.tp.funding.service.QnAService;
import com.tp.funding.service.RewardService;
import com.tp.funding.service.UserPickService;
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

	@Autowired
	private UserPickService userPickService;
	
	@Autowired
	private FundingQuestionService fundingQuestionService;
	
	@Autowired
	private FundingQuestionReplyService fundingQuestionReplyService;
	
	@Autowired
	private FgCommentsService fgCommentsService;

	// 회원가입 입력 폼
	@RequestMapping(value = "joinForm")
	public String joinForm(String method,String loginApiId,Model model) {
		repeatF5 = true;
		if(loginApiId != null) {
			model.addAttribute("loginApiId", loginApiId);
		}
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

	@RequestMapping(value = "login")
	public String login(HttpSession session, String id, String pw, Model model) {
		Users user = new Users();
		user.setUserId(id);
		user.setUserPassword(pw);
		Company company = new Company();
		company.setCompanyId(id);
		company.setCompanyPassword(pw);

		if (usersService.userLoginCheck(user) == 1) {

			session.setAttribute("user", usersService.userDetail(user.getUserId()));
			session.setAttribute("notificationUnReadUserList", notificationService.notificationUnReadUserList(user.getUserId()));
			model.addAttribute("result", "성공");

		} else if (companyService.companyLoginCheck(company) == 1) {

			session.setAttribute("company", companyService.companyDetail(company.getCompanyId()));
			session.setAttribute("notificationUnReadCompanyList", notificationService.notificationUnReadCompanyList(company.getCompanyId()));
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
			session.setAttribute("notificationUnReadUserList", notificationService.notificationUnReadUserList(loginApiId));
			model.addAttribute("result", "성공");
			return "forward:main.do";
		} else if (companyService.companyDetail(loginApiId) != null) {// 이미 회사 유저인 경우 로그인
			session.setAttribute("company", companyService.companyDetail(loginApiId));
			session.setAttribute("notificationUnReadCompanyList", notificationService.notificationUnReadCompanyList(loginApiId));
			model.addAttribute("result", "성공");
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
	public String findPw(String findId, Model model) {
		
		if (usersService.userDetail(findId) != null
				|| companyService.companyDetail(findId) != null) {

			if (usersService.userDetail(findId) != null) {//유저일 때
				usersService.tempPasswordChange(usersService.userDetail(findId));
				model.addAttribute("findPwMsg", "해당 메일로 임시 비밀번호를 발송했습니다. 메일 확인 요망");

			} else if (companyService.companyDetail(findId) != null) {//회사 일 때
				companyService.tempPasswordChange(companyService.companyDetail(findId));
				model.addAttribute("findPwMsg", "해당 메일로 임시 비밀번호를 발송했습니다. 메일 확인 요망");
			}

		} else {

			model.addAttribute("findPwMsg", "해당 아이디가 존재하지 않습니다.");
		}
		return "users/login";
	}

	@RequestMapping(value = "adminApplyView")
	public String adminApplyView(int fundingCode, Model model) {

		model.addAttribute("fundingDetail", fundingGoodsService.fundingDetail(fundingCode));
		model.addAttribute("fundingDetailReward", rewardService.fundingRewardList(fundingCode));

		return "admin/apply/view";
	}

	@RequestMapping(value = "adminApplyList")
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
	public String qnaList(String pageNum, QnA qnA, Model model, String searchWord) {
		qnA.setWriter(searchWord); // 검색할 writer
		Paging paging = new Paging(qnaService.totCntSearchQnA(qnA), pageNum, 6, 5);
		qnA.setStartRow(paging.getStartRow());
		qnA.setEndRow(paging.getEndRow());
		model.addAttribute("qnaList", qnaService.qnAList(qnA));
		model.addAttribute("paging", paging);

		return "qna/qnaList";
	}

	@RequestMapping(value = "qnaWriteForm")
	public String qnaWriteForm() {
		return "qna/qnaWrite";
	}

	@RequestMapping(value = "qnaWrite")
	public String qnaWrite(QnA qnA, Model model) {

		int result = qnaService.qnAWrite(qnA);
		if (result == 1) {
			model.addAttribute("writeResult", "문의 작성 완료!");
		} else {
			model.addAttribute("writeResult", "문의 작성 실패ㅠ");
		}

		return "forward:qnaList.do";
	}

	@RequestMapping(value = "qnaView")
	public String qnaView(QnA qnA, Model model) {

		qnaService.qnAHitUp(qnA.getQnANumber());
		model.addAttribute("qnaDetail", qnaService.qnADetail(qnA));

		return "qna/qnaView";
	}

	@RequestMapping(value = "qnaModifyForm")
	public String qnaModifyForm(QnA qnA, Model model) {

		model.addAttribute("qnaDetail", qnaService.qnADetail(qnA));

		return "qna/qnaModify";
	}

	@RequestMapping(value = "qnaModify")
	public String qnaModify(QnA qnA, Model model) {

		int Result = qnaService.qnAModify(qnA);

		if (Result == 1) {
			model.addAttribute("qnAModifyResult", "수정 성공");
		} else {
			model.addAttribute("qnAModifyResult", "수정 실패");
		}

		return "forward:qnaList.do";
	}

	@RequestMapping(value = "adminLogin")
	public String adminLogin() {
		return "admin/adminLogin";
	}

	@RequestMapping(value = "qnaReplyForm")
	public String adminQnaReplyForm(QnA qnA, Model model) {

		model.addAttribute("qnADetail", qnaService.qnADetail(qnA));

		return "qna/qnaReply";
	}

	@RequestMapping(value = "qnaReplyWrite")
	public String qnaReply(QnA qnA, Model model) {

		int result = qnaService.qnAReplyWrite(qnA);
		if (result == 1) {
			model.addAttribute("qnaReplyresult", "답글 작성 완료");
			qnaService.qnAReplyExistUp(qnA.getQnANumber());

		} else {
			model.addAttribute("qnaReplyresult", "답글 작성 실패");
		}

		return "forward:qnaList.do";
	}

	@RequestMapping(value = "adminQnaView")
	public String adminQndView(QnA qnA, Model model) {

		qnaService.qnAHitUp(qnA.getQnANumber());
		model.addAttribute("qnaDetail", qnaService.qnADetail(qnA));

		return "admin/qna/view";

	}

	@RequestMapping(value = "adminQnaReplyForm")
	public String adminQndReplyForm(QnA qnA, Model model) {

		model.addAttribute("qnADetail", qnaService.qnADetail(qnA));

		return "admin/qna/reply";
	}

	@RequestMapping(value = "adminQnaReply")
	public String adminQndReply(QnA qnA, Model model) {

		int result = qnaService.qnAReplyWrite(qnA);
		if (result == 1) {
			model.addAttribute("qnaReplyresult", "답글 작성 완료");
			qnaService.qnAReplyExistUp(qnA.getQnANumber());

		} else {
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
		FundingGoods fundinggoods = fundingGoodsService.fundingDetail(fundingCode);
		String companyId = fundinggoods.getCompanyId();
		companyService.companyInFundingModify(2, companyId); //펀딩 진행 중으로 변경
		String tempfundingAccountNumber = "110-";

		for (int i = 0; i < 3; i++) {

			if (i == 2) {

				tempfundingAccountNumber += ((int) (Math.random() * 10)) + "-";

			} else {
				
				tempfundingAccountNumber += (int) (Math.random() * 10);
				
			}

		}	
		fundinggoods.setFundingAccountNumber(tempfundingAccountNumber);	
		fundingGoodsService.fundingAccountAdd(fundinggoods);		
		notification.setNotificationContent("귀사의 펀딩 신청이 승인 되었습니다.");
		notification.setCompanyId(fundinggoods.getCompanyId());
		notification.setAdminId("admin");
		notificationService.notificationWrite(notification);
		model.addAttribute("adminApplyMsg", "apply 완료");

		return "forward:adminMain.do";
	}

	@RequestMapping(value = "adminReject")
	public String adminReject(int fundingCode, Model model, Notification notification) {
		fundingGoodsService.fundingAdminPermitNo(fundingCode);
		FundingGoods fundinggoods = fundingGoodsService.fundingDetail(fundingCode);
		String companyId = fundinggoods.getCompanyId();
		companyService.companyInFundingModify(0, companyId); //펀딩 진행 중으로 변경
		notification.setNotificationContent("귀사의 펀딩 신청이 거절 되었습니다.");
		notification.setCompanyId(fundinggoods.getCompanyId());
		notification.setAdminId("admin");
		notificationService.notificationWrite(notification);
		model.addAttribute("adminRejectMsg", "reject 완료");
		return "forward:adminMain.do";
	}


	@RequestMapping(value = "myPagePick")
	public String myPagePick(UserPick userPick, Model model) {

		model.addAttribute("myPagePickList", userPickService.userPickList(userPick));

		return "myPage/myPagePickList";
	}

	@RequestMapping(value = "userPickDelete")
	public String userPickDelete(UserPick userPick, Model model) {

		model.addAttribute("userPickDeleteResult", userPickService.userPickDelete(userPick));

		return "forward:myPagePick.do";

	}

	@RequestMapping(value = "myPageModifyForm")
	public String myPageModifyForm(String userId, String companyId, Model model) {

		if (userId != null && !userId.equals("")) {

			model.addAttribute("userDetail", usersService.userDetail(userId));

		} else if (companyId != null && !companyId.equals("")) {

			model.addAttribute("companyDetail", companyService.companyDetail(companyId));

		}

		return "myPage/myPageModify";
	}

	@RequestMapping(value = "myPageModify")
	public String myPageModify(HttpSession session, Users user, Company company, MultipartHttpServletRequest mRequest,
			Model model) {

		if (user.getUserId() != null && company.getCompanyId() == null) {

			int result = usersService.userInfoModify(mRequest, user);

			if (result == 1) {

				model.addAttribute("userModifyResult", "고객(일반)정보 수정 성공");
				session.setAttribute("user", usersService.userDetail(user.getUserId()));
				session.setAttribute("notificationUnReadUserList",
						notificationService.notificationUnReadUserList(user.getUserId()));

				System.out.println(user);

			} else {

				model.addAttribute("userModifyResult", "고객(일반)정보 수정 실패");

			}

		}

		else if (user.getUserId() == null && company.getCompanyId() != null) {

			int result = companyService.companyInfoModify(mRequest, company);

			if (result == 1) {

				model.addAttribute("companyModifyResult", "고객(회사)정보 수정 완료");
				session.setAttribute("company", companyService.companyDetail(company.getCompanyId()));
				session.setAttribute("notificationUnReadCompanyList",
						notificationService.notificationUnReadCompanyList(company.getCompanyId()));

			} else {

				model.addAttribute("companyModifyResult", "유저(회사)정보 수정 실패");
			}

		}

		return "myPage/myPageMain";
	}
	
	@RequestMapping(value="myPagePost")
	public String myPagePost(QnA qnA, Model model) {		
		
		model.addAttribute("myQnaList", qnaService.myQnaList(qnA));
		model.addAttribute("myFundingGoodsQnaList", fundingQuestionService.myFundingGoodsQnaList(qnA.getUserId()));
		model.addAttribute("myFundingCommentsList", fgCommentsService.myFundingCommentsList(qnA.getUserId()));
				
		return "myPage/myPagePostDashBoard";
	}
	
	@RequestMapping(value="myQnaAnswerView")
	public String myQnaAnswerView(QnA qnA, Model model) {
				
		int qnANumber = qnaService.getAnswerQnanumber(qnA);	
		
		qnA.setQnANumber(qnANumber);
		model.addAttribute("qnaDetail", qnaService.qnADetail(qnA));	
		
		return "myPage/myQnaAnswerView";
	}
	
	@RequestMapping(value="myFGQnaAnswerView")
	public String myFGQnaAnswerView(int fundingQuestionNumber, Model model) {
		
		model.addAttribute("myFGQuestionReplyDetail", fundingQuestionReplyService.myFGQuestionReplyDetail(fundingQuestionNumber));
				
		return "myPage/myFGQnaAnswerView";
	}
	

}
