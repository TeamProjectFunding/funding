package com.tp.funding.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;
import java.util.TreeSet;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tp.funding.dto.Company;
import com.tp.funding.dto.Admin;
import com.tp.funding.dto.Event;
import com.tp.funding.dto.EventPrize;
import com.tp.funding.dto.FundingGoods;
import com.tp.funding.dto.FundingGoodsDetail;
import com.tp.funding.dto.Notice;

import com.tp.funding.service.AdminService;

import com.tp.funding.dto.Notification;
import com.tp.funding.dto.Users;
import com.tp.funding.service.CompanyService;
import com.tp.funding.service.EventPrizeService;
import com.tp.funding.service.EventService;
import com.tp.funding.service.FundingDetailService;
import com.tp.funding.service.FundingGoodsService;
import com.tp.funding.service.FundingQuestionService;
import com.tp.funding.service.NoticeService;
import com.tp.funding.service.NotificationService;
import com.tp.funding.service.QnAService;
import com.tp.funding.service.UsersService;
import com.tp.funding.util.Paging;

@Controller
public class AdminControllerByTop {
	@Autowired
	UsersService uService; // 유저 서비스
	@Autowired
	CompanyService cService; // 회사 서비스
	@Autowired
	NoticeService nService; // 공지사항 서비스
	@Autowired
	EventService eService; // 이벤트 서비스
	@Autowired
	QnAService qService; // 질문 서비스
	@Autowired
	FundingGoodsService fService; // 상품 서비스
	@Autowired
	FundingQuestionService fqService; // 상품문의 서비스
	@Autowired
	FundingDetailService fundingDetailService;
	@Autowired
	AdminService adminService;
	@Autowired
	EventPrizeService eventPrizeService;
	@Autowired
	NotificationService notificationService;

	// 관리자 페이지 이동
	@RequestMapping(value = "adminMain")
	public String adminMain(Model model, FundingGoods fundingGoods, Admin admin, HttpSession session) {
		int result = adminService.adminLoginCheck(admin);

		if (result == 1 || session.getAttribute("admin") != null) {
			model.addAttribute("qnAAdminList", qService.qnAAdminList());
			model.addAttribute("eventAllList", eService.eventAllList()); // 이벤트리스트 전체
			model.addAttribute("noticeList", nService.noticeList()); // 공지사항리스트 전체
			model.addAttribute("fundingReadyList", fService.fundingReadyList(fundingGoods)); // 승인 대기중인 리스트
			model.addAttribute("fundingDeadlineList", fService.fundingDeadlineList());

			model.addAttribute("result", "성공");

			if (result == 1) {
				session.setAttribute("admin", adminService.adminDetail(admin.getAdminId()));
			}

		} else {

			model.addAttribute("result", "실패");

		}

		return "admin/adminMain";

	}

	// 관리자 페이지 user
	@RequestMapping(value = "adminUserList")
	public String adminUserSearchList(Model model, String searchUserName) {
		model.addAttribute("userSearchList", uService.userSearchList(searchUserName));
		return "admin/users/list";
	}

	// 관리자 페이지 user상세보기
	@RequestMapping(value = "adminUserDetailView")
	public String adminUserDetailView(Model model, String userId) {
		model.addAttribute("user", uService.userDetail(userId));
		return "admin/users/view";
	}

	// 관리자 user상세페이지 user비활성화
	@RequestMapping(value = "adminUserOutSite")
	public String adminUserOutSite(Model model, String userId) {
		model.addAttribute("userOutSiteResult", uService.userOutSite(userId));
		return "forward:adminUserList.do";
	}

	// 관리자 페이지 company
	@RequestMapping(value = "adminCompanyList")
	public String adminCompanyList(Model model, String companyName) {
		model.addAttribute("companySearchList", cService.companySearchList(companyName));
		return "admin/company/list";
	}

	// 관리자 company 상세보기
	@RequestMapping(value = "adminCompanyDetailView")
	public String adminCompanyDetailView(Model model, String companyId) {
		model.addAttribute("company", cService.companyDetail(companyId));
		return "admin/company/view";
	}

	// 관리자 company상세페이지 company비활성화
	@RequestMapping(value = "adminCompanyOutSite")
	public String adminCompanyOutSite(Model model, String companyId) {
		model.addAttribute("companyOutSiteResult", cService.companyOutSite(companyId));
		return "forward:adminCompanyList.do";
	}

	// 관리자 왼쪽바 NOTICE 페이징
	@RequestMapping(value = "adminNoticeList")
	public String adminNoticeList(Model model, String pageNum) {
		Paging noticePaging = new Paging(nService.totNotice(), pageNum, 5, 5);
		model.addAttribute("paging", noticePaging);
		model.addAttribute("noticeListP", nService.noticeListP(pageNum));
		return "admin/notice/list";
	}	

	// 관리자 왼쪽바 상품문의 페이징
	@RequestMapping(value = "adminGoodsQnaList")
	public String adminGoodsQnaList(Model model, String pageNum) {
		Paging fundingQuestion = new Paging(fqService.totfundingQuestion(), pageNum, 5, 5);
		model.addAttribute("paging", fundingQuestion);
		model.addAttribute("fundingQuestionList", fqService.fundingQuestionList(pageNum));
		return "admin/goodsQna/list";
	}

	// 관리자 왼쪽바 이벤트 페이징
	@RequestMapping(value = "adminEventList")
	public String adminEventList(Model model, String pageNum) {
		Paging eventPaging = new Paging(eService.totEvent(), pageNum, 5, 5);
		model.addAttribute("paging", eventPaging);
		model.addAttribute("eventAdminList", eService.eventAdminList(pageNum));
		return "admin/event/list";
	}	

	// 공지사항 작성 폼이동
	@RequestMapping(value = "adminNoticeWriteForm")
	public String adminNoticeWriteForm() {
		return "admin/notice/write";
	}

	// 공지사항 작성
	@RequestMapping(value = "noticeWrite")
	public String noticeWrite(Model model, Notice notice) {
		nService.noticeWrite(notice);
		return "redirect:adminNoticeList.do";
	}

	// 공지사항 수정 폼이동
	@RequestMapping(value = "noticeAdminModifyForm")
	public String noticeAdminModifyForm(Model model, int noticeNumber) {
		nService.noticeDetail(noticeNumber);
		model.addAttribute("notice", nService.noticeDetail(noticeNumber));
		return "admin/notice/modify";
	}

	// 공지사항 수정
	@RequestMapping(value = "noticeAdminModify")
	public String noticeAdminModfiy(Notice notice) {
		nService.noticeModify(notice);
		return "redirect:adminNoticeList.do";
	}

	// 공지사항 삭제
	@RequestMapping(value = "noticeAdminDelete")
	public String noticeAdminDelete(int noticeNumber) {
		nService.noticeDelete(noticeNumber);
		return "redirect:adminMain.do";
	}

	// 이벤트 마감
	@RequestMapping(value = "eventClose")
	public String eventClose(Model model, int eventNumber) {
		// 1단계
		int eventParticipateCount = eService.eventColseStep1(eventNumber);
		Event event = new Event();
		event.setEventParticipateCount(eventParticipateCount);
		event.setEventNumber(eventNumber);
		// 2단계
		eService.eventColseStep2(event);
		event = eService.eventDetail(eventNumber); 
		// 3단계 추첨
		Random random = new Random();
		int eventPrizeCount = event.getEventPrizeCount(); // eventPrizecount
		int[] raffle = new int[eventPrizeCount]; // 당첨인원 eventPrizeCount
		TreeSet<Integer> chancenum = new TreeSet<Integer>();
		while (chancenum.size() < raffle.length) {// raffle.length 당첨인원만큼
			chancenum.add(random.nextInt(eventParticipateCount) + 1); // eventParticipateCount 참여자
		}
		Iterator<Integer> key = chancenum.iterator();
		int idx = 0;
		while (key.hasNext()) {
			raffle[idx] = key.next();
			EventPrize eventPrize = new EventPrize();
			eventPrize.setSearchNumUserId(raffle[idx]); // 추첨 번호로 유저아이디검색하려고
			eventPrize.setEventNumber(eventNumber); // 추첨 번호로 유저아이디검색하려고
			String[] userId = new String[eventPrizeCount]; // 조회해서 유저아이디 담는 배열
			userId[idx] = eventPrizeService.searchNumUserId(eventPrize);
			EventPrize eventPrizeRaffleInsert = new EventPrize();
			eventPrizeRaffleInsert.setUserId(userId[idx]);
			eventPrizeRaffleInsert.setEventNumber(eventNumber);
			eventPrizeService.raffleUserIdEnrollment(eventPrizeRaffleInsert); // 당청 아이디 eventPrize에 인서트함
			Notification notification = new Notification();
			String notificationContent = userId[idx] + "님 이벤트에 당첨되셨습니다";
			notification.setNotificationContent(notificationContent);
			notification.setUserId(userId[idx]);
			notification.setAdminId("admin"); // 나중에 세션값에서 넣어줘야함
			notificationService.eventRaffleUserSend(notification);
			idx++;
		}
		return "redirect:adminMain.do";
	}
	//펀딩 마감
	@RequestMapping(value="adminFundingClose")
	public String fundingClose(int fundingCode) {
		FundingGoods fundingGoods = fService.getFundingGoods(fundingCode); // 성공실패여부 확인위해 객체가져옴
		int FundingTargetRate = fundingGoods.getFundingTargetRate();		// 상품 모집 비율 달성여부
		int changeAccountBalance  = fundingGoods.getFundingAccountBalance(); //성공시 회사계좌로 입금할 돈
		String companyId = fundingGoods.getCompanyId();
		if (FundingTargetRate >=100) { // 모집성공이면
			Company company = new Company();						 
			company.setChangeAccountBalance(changeAccountBalance);
			company.setCompanyId(companyId);
			cService.companyFundraisingSuccess(company); // 모금성공시 회사계좌 입금
			Notification notification = new Notification();
			String notificationContent = companyId+"님 모집에 성공하였습니다";
			String adminId = "admin";
			notification.setNotificationContent(notificationContent);
			notification.setAdminId(adminId);
			notification.setCompanyId(companyId);
			notificationService.companyFundraisingSuccessSend(notification); // 알람뿌려
			fService.fundingSucces(fundingCode); //펀딩 테이블 업데이트
			return "redirect:adminMain.do";
		}else { 
			ArrayList<FundingGoodsDetail> fundingGoodsdteil = new ArrayList<FundingGoodsDetail>(fundingDetailService.fundingGoodsAdminDeadline(fundingCode));
			String[] userId =new String[fundingGoodsdteil.size()];
			int[] changeMoneyAmount =new int[fundingGoodsdteil.size()];
			int idx=0;
			while(idx < fundingGoodsdteil.size()) {
				userId[idx] = fundingGoodsdteil.get(idx).getUserId();
				changeMoneyAmount[idx] = fundingGoodsdteil.get(idx).getFundingAmount();
				Users user = new Users();
				user.setUserId(userId[idx]);
				user.setChangeMoneyAmount(changeMoneyAmount[idx]);
				uService.fundraisingFailureReturnMoney(user); //유저에게 환불 
				Notification notification = new Notification();
				String adminId = "admin"; // 세션갑넣어야함
				String notificationContent = "모금에 실패하였습니다"+changeMoneyAmount[idx]+"환불합니다";
				notification.setNotificationContent(notificationContent);;
				notification.setAdminId(adminId);
				notification.setUserId(userId[idx]);
				notificationService.usersFundraizingFailureSend(notification); //알람 뿌려
				idx++;
			}
			fService.fundraizingFailure(fundingCode); //펀딩 굿즈 2 실패 계좌잔고 0 세팅
			return "redirect:adminMain.do";
		}
	}
	@RequestMapping(value="adminGoodsModifyForm")
	public String adminGoodsModify(Model model, int fundingCode) {
		//System.out.println("펀딩코드 잘넘어 와뜨나?"+fundingCode);
		FundingGoods fundingGoods = fService.fundingDetail(fundingCode);
		model.addAttribute("fundingGoods", fundingGoods); 
		return "admin/goods/modify";
	}
}
