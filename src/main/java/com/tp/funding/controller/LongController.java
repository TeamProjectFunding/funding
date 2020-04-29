package com.tp.funding.controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tp.funding.dto.Company;
import com.tp.funding.dto.DepositAndWithdrawal;
import com.tp.funding.dto.FundingGoods;
import com.tp.funding.dto.FundingGoodsComments;
import com.tp.funding.dto.FundingGoodsCommentsReply;
import com.tp.funding.dto.FundingGoodsDetail;
import com.tp.funding.dto.Notification;
import com.tp.funding.dto.Reward;
import com.tp.funding.dto.UserPick;
import com.tp.funding.dto.Users;
import com.tp.funding.service.CompanyService;
import com.tp.funding.service.DepositAndWithdrawalService;
import com.tp.funding.service.FgCommentsReplyService;
import com.tp.funding.service.FgCommentsService;
import com.tp.funding.service.FundingDetailService;
import com.tp.funding.service.FundingGoodsService;
import com.tp.funding.service.FundingNewsService;
import com.tp.funding.service.FundingQuestionService;
import com.tp.funding.service.NoticeService;
import com.tp.funding.service.NotificationService;
import com.tp.funding.service.QnAService;
import com.tp.funding.service.RewardService;
import com.tp.funding.service.UserPickService;
import com.tp.funding.service.UsersService;

@Controller
public class LongController {
	private boolean repeatF5 = false;
	@Autowired
	private FundingGoodsService fundingGoodsService;
	@Autowired
	private FundingDetailService fundingDetailService;
	@Autowired
	private UserPickService userPickService;
	@Autowired
	private UsersService usersService;
	@Autowired
	private RewardService rewardService;
	@Autowired
	private FundingNewsService fundingNewsService;
	@Autowired
	private FgCommentsService fgCommentsService;
	@Autowired
	private FgCommentsReplyService fgCommentsReplyService;
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private CompanyService companyService;
	@Autowired
	private DepositAndWithdrawalService depositAndWithdrawalService;
	@Autowired
    private QnAService qnAService;
    @Autowired
    private FundingQuestionService fundingQuestionService;
	@Autowired
	private NotificationService notificationService;
	
	// 펀드 리스트
	@RequestMapping(value = "fundList")
	public String fundList(Model model, String pageNum, String category) {
		// startRow endRow
		if (category.equals("fund")) {
			model.addAttribute("goods", fundingGoodsService.investmentOpenList(pageNum, model));
			model.addAttribute("category", "FUND");
		} else if (category.equals("reward")) {
			model.addAttribute("goods", fundingGoodsService.rewardOpenList(pageNum, model));
			model.addAttribute("category", "REWARD");
		}
		return "goods/fundList";
	}
	
	
	//검색 리스트
	@RequestMapping(value = "fundSearchList")
	public String fundSearchList(Model model, String searchWord) {
		model.addAttribute("fundList", fundingGoodsService.fundingSearchList(searchWord));
		return "message/fundSearchList";
	}
	
	//상품 상세보기 첫 페이지
	@RequestMapping(value = "goodsViewCoreInfomation")
	public String goodsViewCoreInfomation(Model model, int fundingCode, String pageNum, HttpSession session) {
		FundingGoodsDetail fundingGoodsDetail = new FundingGoodsDetail();
		fundingGoodsDetail.setFundingCode(fundingCode);
		model.addAttribute("userList", fundingDetailService.doFundingUserList(pageNum, fundingCode));
		model.addAttribute("good", fundingGoodsService.fundingDetail(fundingCode));
		// 찜 추가 여부 확인
		if (session.getAttribute("user") != null) {
			String userId = ((Users) session.getAttribute("user")).getUserId();
			if (userPickService.userPickCheck(userId, fundingCode) == 1) {
				model.addAttribute("userAlreadyPick", true);
			}
		}
		return "goods/goodsViewCoreInfomation";
	}
	//펀딩 코멘트 답글보기 버튼
	@RequestMapping(value = "goodsCommentReplyView")
	public String goodsCommentReplyView(int fgCommentsNumber,Model model,HttpSession session) {
		if(session.getAttribute("user")==null) { //로그인 안 한 상태냐?
			model.addAttribute("noUser", true);
		}
		model.addAttribute("commentReplyList", fgCommentsReplyService.fundingCommentReplyList(fgCommentsNumber));
		model.addAttribute("fgCommentsNumber", fgCommentsNumber);
		return "message/goodsCommentReplyList";
	}

	//펀딩 코멘트 쓰기 
	@RequestMapping(value = "goodsCommentWrite")
	public String goodsCommentWrite(FundingGoodsComments fundingGoodsComments) {
		fgCommentsService.fundingCommentWrite(fundingGoodsComments);
		return "message/noMessage"; //뿌릴 메세지 없음
	}
	//펀딩 코멘트 답글 작성
	@RequestMapping(value = "goodsCommentReplyWrite")
	public String goodsCommentReplyWrite(FundingGoodsCommentsReply fundingGoodsCommentsReply) {
		int fgCommentsNumber = fundingGoodsCommentsReply.getFgCommentsNumber();
		int result = fgCommentsReplyService.fundingCommentsReplyWrite(fundingGoodsCommentsReply); // 답글작성
		if(result==1) {
			fgCommentsService.fundingCommentReplyCountUp(fgCommentsNumber); //답글 갯수 증가
		}
		return "message/noMessage"; //뿌릴 메세지 없음
	}
	
	
	//상품 상세보기 info 네비게이션
	@RequestMapping(value = "goodsInfoNavigation")
	public String goodsInfoNavigation(int fundingCode,String infoType,String pageNum,Model model) {
		if(infoType.equals("goodsViewNews")) {//새소식
			model.addAttribute("newsList", fundingNewsService.fundingNewsList(pageNum, fundingCode, model));
		}else if(infoType.equals("goodsViewDebate")) {//토론
			model.addAttribute("commentList", fgCommentsService.fundingCommentList(fundingCode, pageNum, model));
			model.addAttribute("good", fundingGoodsService.fundingDetail(fundingCode));
		}else if(infoType.equals("goodsViewInfo")) {//투자정보
			model.addAttribute("good", fundingGoodsService.fundingDetail(fundingCode));
		}else if(infoType.equals("goodsViewInvestor")) {//투자자
			model.addAttribute("doFundingUserList", fundingDetailService.doFundingUserList(pageNum, fundingCode));
		}
		return "goods/"+infoType;
	}
	
	// 메인
	@RequestMapping(value = "main")
	public String main(Model model) {
		model.addAttribute("investmentTop3", fundingGoodsService.investmentAllList(null, null));
		model.addAttribute("rewardTop3", fundingGoodsService.rewardAllList(null, null));
		model.addAttribute("noticeList", noticeService.noticeList());
		return "main/main";
	}

	// 유저 찜
	@RequestMapping(value = "userPick")
	public String userPick(int fundingCode, Model model, HttpSession session, UserPick userPick) {
		String userId = ((Users) session.getAttribute("user")).getUserId();		
		userPick.setUserId(userId);		
		if (userPickService.userPickCheck(userId, fundingCode) == 1) { // 이미 찜 추가 했으면 찜 삭제
			userPickService.userPickDelete(userPick);
		} else {// 찜 추가 안했으면 찜 추가로직
			userPickService.userPickAdd(userId, fundingCode);
		}
		return "message/noMessage";
	}

	//카카오 로그인
	@RequestMapping(value = "kakaoLogin")
	public String kakaoLogin(Model model) {
		return "loginApi/kakaoLogin";
	}

	// 펀딩 신청 폼
	@RequestMapping(value = "fundingApplyForm")
	public String fundingApplyForm() {
		repeatF5 = true;
		return "funding/fundingApplyForm";
	}

	// 펀딩(리워드) 신청
	@RequestMapping(value = "fundingApply")
	public String fundingApply(FundingGoods fundingGoods, MultipartHttpServletRequest mRequest, Model model) {
		System.out.println("fundingGoods:"+fundingGoods);
		if(repeatF5) {
			if(fundingGoods.getFundingCategory()==0) { // 투자일 때
				fundingGoodsService.fundingRegist(fundingGoods, mRequest); //펀딩 상품 등록
				int fundingCode = fundingGoodsService.getFundingCode(); //펀딩 코드 가져오기
				Reward reward = new Reward();
				reward.setFundingCode(fundingCode);
				reward.setRewardGrade(0);
				reward.setRewardName(mRequest.getParameter("fundRewardName"));
				reward.setRewardInterst(Integer.parseInt(mRequest.getParameter("fundingInvestmentProfitRate")));
				reward.setFundingInvestmentPeriod(Integer.parseInt(mRequest.getParameter("fundingInvestmentPeriod")));
				rewardService.investmentWrite(reward); // 리워드 등록
			}else { //리워드 일 때
				Date fundingRewardDeliveryDate = Date.valueOf(mRequest.getParameter("fundingTargetDate"));
				fundingGoods.setFundingRewardDeliveryDate(fundingRewardDeliveryDate);
				fundingGoodsService.fundingRegist(fundingGoods, mRequest); //펀딩 상품 등록
				int fundingCode = fundingGoodsService.getFundingCode(); //펀딩 코드 가져오기
				String[] rewardName = mRequest.getParameterValues("goodsName");
				String[] rewardConditionStr = mRequest.getParameterValues("rewardCondition");
				Reward[] reward = new Reward[rewardConditionStr.length];
				for(int i=0;i<rewardConditionStr.length;i++) {
					reward[i] = new Reward();
					reward[i].setRewardName(rewardName[i]);
					reward[i].setRewardCondition(Integer.parseInt(rewardConditionStr[i]));
					reward[i].setRewardGrade(1);
					reward[i].setFundingRewardDeliveryDate(fundingRewardDeliveryDate);
					reward[i].setFundingCode(fundingCode);
				}
				rewardService.rewardWrite(reward,mRequest);
			}
			model.addAttribute("fundingApplyResult", "펀딩 신청에 성공하셨습니다. 지원해주셔서 감사드립니다.");
		}
		
		repeatF5 = false;
		return "forward:main.do";
	}

	// 펀딩하기 Step1
	@RequestMapping(value = "fundingStep1")
	public String fundingStep1() {
		return "funding/fundingStep1";
	}

	// 펀딩하기 Step2
	@RequestMapping(value = "fundingStep2")
	public String fundingStep2(int fundingCode, Model model) {
		model.addAttribute("good", fundingGoodsService.fundingDetail(fundingCode));
		model.addAttribute("rewardList", rewardService.fundingRewardList(fundingCode));
		return "funding/fundingStep2";
	}

	// 리워드 select ajax
	@RequestMapping(value = "selectRewardProduct")
	public String selectRewardProduct(int rewardCode, Model model) {
		Reward reward = rewardService.rewardDetail(rewardCode);
		model.addAttribute("rewardProduct", reward.getRewardImage());
		return "message/rewardProduct";
	}
	@RequestMapping(value = "selectRewardDeliveryDate")
	public String selectRewardDeliveryDate(int rewardCode, Model model) {
		Reward reward = rewardService.rewardDetail(rewardCode);
		model.addAttribute("rewardDeliveryDate", reward.getFundingRewardDeliveryDate());
		return "message/rewardDeliveryDate";
	}
	@RequestMapping(value = "setRewardCondition")
	public String setRewardCondition(int rewardCode, Model model) {
		Reward reward = rewardService.rewardDetail(rewardCode);
		model.addAttribute("rewardCondition", reward.getRewardCondition());
		return "message/rewardCondition";
	}
	@RequestMapping(value = "setRewardCode")
	public String setRewardCode(int fundingCode, Model model) {
		model.addAttribute("rewardList", rewardService.fundingRewardList(fundingCode));
		return "message/rewardCode";
	}

	// 펀딩하기 Step3
	@RequestMapping(value = "fundingComplate")
	public String fundingComplate(FundingGoodsDetail fundingGoodsDetail,String userId, int fundingCategory,
			HttpServletRequest request, HttpSession session, Model model) {
		int fundingCode = fundingGoodsDetail.getFundingCode();
		int changeMoneyAmount = fundingGoodsDetail.getFundingAmount();
		int rewardCode = 0;
		if (fundingCategory == 0) { // 투자
			rewardCode = rewardService.fundingRewardList(fundingCode).get(0).getRewardCode();
			usersService.userInvestmentAmountModify(userId, changeMoneyAmount); // 유저 누적투자금 증가
		} else if (fundingCategory == 1) { // 리워드
			rewardCode = Integer.parseInt(request.getParameter("rewardCode"));
			Reward reward = rewardService.rewardDetail(rewardCode);
			fundingGoodsDetail.setFundingAmount(reward.getRewardCondition());
			changeMoneyAmount = reward.getRewardCondition();
			changeMoneyAmount += fundingGoodsDetail.getFundingRewardAddDonation();
		}
		fundingGoodsDetail.setUserId(userId);
		fundingDetailService.fundingGoodsDetailWrite(fundingGoodsDetail); // 펀딩 디테일 생성
		fundingGoodsService.fundingBalancePlus(fundingCode, changeMoneyAmount); //펀딩 누적 잔액 ++
		fundingGoodsService.fundingPeopleCountUp(fundingCode); // 펀딩한 사람 추가
		fundingGoodsService.fundingTargetRateModify(fundingCode); // 펀딩 달성 % 변경
		usersService.userBalanceModify(userId, changeMoneyAmount * -1); // 유저 계좌잔액 감소
		Users user = usersService.userDetail(userId);
		DepositAndWithdrawal depositAndWithdrawal = new DepositAndWithdrawal(1, changeMoneyAmount*-1, user.getUserAccountBalance(), fundingGoodsService.fundingDetail(fundingCode).getFundingName()+" 상품에 "+changeMoneyAmount+"원 펀딩", null, userId, rewardCode);
		depositAndWithdrawalService.writeDepositAndWithdrawal(depositAndWithdrawal); // 입출금 정보 등록
		if(user.getUserGradeNo() < usersService.userCurrentGrade(userId)) {// 등급업 기준 확인
			usersService.userGradeUp(userId); //등급 업
		}
		session.setAttribute("user", usersService.userDetail(userId)); //session에 유저 다시 추가
		model.addAttribute("good", fundingGoodsService.fundingDetail(fundingCode));
		Reward reward = rewardService.rewardDetail(rewardCode);
		model.addAttribute("reward", reward);
		model.addAttribute("fundingGoodsDetail", fundingGoodsDetail);
		return "funding/fundingComplate";
	}
	
	
	//마이페이지 펀딩진행 내역 회사 그래프
	@RequestMapping(value="myPageGoods")
	public String myPageGoods(String companyId,Model model,String pageNum) {
		List<FundingGoods> companyEndFundingList = fundingGoodsService.companyEndFundingList(companyId,pageNum,model);
		model.addAttribute("companyEndFundingList", companyEndFundingList);
		for(int i=0;i<companyEndFundingList.size();i++) {
			int fundingCode = companyEndFundingList.get(i).getFundingCode();
			model.addAttribute("reward"+fundingCode, rewardService.fundingRewardList(fundingCode));
		}
		model.addAttribute("doFundingCount", companyEndFundingList.size());
		int maxRecruitmentAmount = fundingGoodsService.maxRecruitmentAmount(companyId,pageNum,model);
		if(maxRecruitmentAmount > 0) {
			model.addAttribute("maxRecruitmentAmount", maxRecruitmentAmount);
		}
		return "myPage/myPageGoods";
	}
	//마이페이지 펀딩내역 그래프
	@RequestMapping(value="myPageFunding")
	public String myPageFunding(String userId,Model model,String pageNum) {//유저그래프
		model.addAttribute("userFundingList",fundingDetailService.userFundingList(pageNum, userId, model));
		int maxFundingAmount = fundingDetailService.userFundingListInMaxFundingAmount(userId,pageNum);
		if(maxFundingAmount != 0) {
			model.addAttribute("maxFundingAmount", maxFundingAmount);
		}
		return "myPage/myPageFunding";
	}
	//회사마이페이지 그래프 속 Detail
	@RequestMapping(value="fundingDetailView")
	public String fundingDetailView(int fundingCode,String companyId,Model model) {
		FundingGoods good = fundingGoodsService.fundingDetail(fundingCode);
		model.addAttribute("good", good);
		if(good.getFundingCategory() == 0) { //투자
			Reward reward = rewardService.fundingRewardList(fundingCode).get(0);
			model.addAttribute("reward", reward);
			model.addAttribute("companyDNWList", depositAndWithdrawalService.companyRewardDNWList(companyId, reward.getRewardCode()));
		}else {//리워드
			model.addAttribute("rewardList", rewardService.fundingRewardList(fundingCode));
		}
		return "message/myPageGoodsDetaill";
	}
	//유저 마이페이지 그래프 속 Detail
	@RequestMapping(value="fundingDetailUserView")
	public String fundingDetailUserView(int fundingCode,int fundingGoodsDetailNumber,String userId,Model model) {
		FundingGoods good = fundingGoodsService.fundingDetail(fundingCode);
		model.addAttribute("good", good);
		model.addAttribute("goodDetail", fundingDetailService.fundingGoodsDetailView(fundingGoodsDetailNumber));
		if(good.getFundingCategory() == 0) { //투자
			Reward reward = rewardService.fundingRewardList(fundingCode).get(0);
			model.addAttribute("reward", reward);
			model.addAttribute("userRewardDNWList", depositAndWithdrawalService.userRewardDNWList(userId, reward.getRewardCode()));
		}else {//리워드
			model.addAttribute("reward", rewardService.userSelectReward(fundingCode, fundingGoodsDetailNumber));
		}
		return "message/fundingDetailUserView";
	}
	@RequestMapping(value="myPageMain")
	public String myPageMain(String bank,String accountHolder,String accountNumber,String userId, String companyId, Model model,HttpSession session) {
		if(bank!=null) {
			if(!userId.equals("")) {//유저인 경우
				usersService.userAccountModify(userId, bank, accountNumber);
				session.setAttribute("user", usersService.userDetail(userId));
			}else if(!companyId.equals("")) {//회사인 경우
				Company company = new Company();
				company.setCompanyId(companyId);
				company.setCompanyBankDepositor(accountHolder);
				company.setCompanyBankName(bank);
				company.setCompanyAccountNumber(accountNumber);
				companyService.companyAccountModify(company);
				session.setAttribute("company", companyService.companyDetail(companyId));
			}
		}
		if(userId != null && !userId.equals("")) {
			session.setAttribute("user", usersService.userDetail(userId)); //세션에 유저 다시 넣기
			model.addAttribute("userFundingTotalCnt", fundingDetailService.myFundingTotalCount(userId)); //펀딩 총 갯수	
			model.addAttribute("myPostTotalCnt", qnAService.myTotQna(userId)+fundingQuestionService.myFundingtotQna(userId)+fgCommentsService.myFundingTotComments(userId));
			model.addAttribute("DNMList",depositAndWithdrawalService.userDNWList(userId)); //입출금 정보 등록
		}else if(companyId != null && !companyId.equals("")) {
			session.setAttribute("company", companyService.companyDetail(companyId)); //세션에 유저 다시 넣기
			model.addAttribute("companyEndFundingCount",fundingGoodsService.companyEndFundingCount(companyId)); //회사가 총 펀딩한 갯수
			model.addAttribute("DNMList",depositAndWithdrawalService.companyDNWList(companyId));
		}
		
		
		return "myPage/myPageMain";
	}
	// 유저&회사 입금
	@RequestMapping(value = "depositMypage")
	public String depositMypage(DepositAndWithdrawal depositAndWithdrawal,Model model,HttpSession session) {
		depositAndWithdrawal.setdNWContent("마이페이지 입금");
		String userId = depositAndWithdrawal.getUserId();
		String companyId = depositAndWithdrawal.getCompanyId();
		int dNWAmount = depositAndWithdrawal.getdNWAmount();
		if(userId != null& !userId.equals("")) {//유저
			depositAndWithdrawal.setdNWBalance(usersService.userDetail(userId).getUserAccountBalance()+depositAndWithdrawal.getdNWAmount());
			depositAndWithdrawalService.writeDepositAndWithdrawal(depositAndWithdrawal);
			usersService.userBalanceModify(userId, dNWAmount);
			session.setAttribute("user", usersService.userDetail(userId));
		}else if(companyId != null& !companyId.equals("")) {//회사
			depositAndWithdrawal.setdNWBalance(companyService.companyDetail(companyId).getCompanyAccountBalance()+depositAndWithdrawal.getdNWAmount());
			depositAndWithdrawalService.writeDepositAndWithdrawal(depositAndWithdrawal);
			Company company = new Company();
			company.setCompanyId(companyId);
			company.setChangeAccountBalance(dNWAmount);
			companyService.companyBalanceModify(company);
			session.setAttribute("company", companyService.companyDetail(companyId));
		}
		model.addAttribute("dNWAmount", dNWAmount);
		return "message/depositMypage";
	}
	// 유저&회사 출금
	@RequestMapping(value = "withdrawMypage")
	public String withdrawMypage(DepositAndWithdrawal depositAndWithdrawal,Model model,HttpSession session) {
		depositAndWithdrawal.setdNWContent("마이페이지 출금");
		String userId = depositAndWithdrawal.getUserId();
		String companyId = depositAndWithdrawal.getCompanyId();
		int dNWAmount = depositAndWithdrawal.getdNWAmount();
		if(userId != null& !userId.equals("")) {//유저
			depositAndWithdrawal.setdNWBalance(usersService.userDetail(userId).getUserAccountBalance()+depositAndWithdrawal.getdNWAmount());
			depositAndWithdrawalService.writeDepositAndWithdrawal(depositAndWithdrawal);
			usersService.userBalanceModify(userId, dNWAmount);
			session.setAttribute("user", usersService.userDetail(userId));
		}else if(companyId != null& !companyId.equals("")) {//회사
			depositAndWithdrawal.setdNWBalance(companyService.companyDetail(companyId).getCompanyAccountBalance()+depositAndWithdrawal.getdNWAmount());
			depositAndWithdrawalService.writeDepositAndWithdrawal(depositAndWithdrawal);
			Company company = new Company();
			company.setCompanyId(companyId);
			company.setChangeAccountBalance(dNWAmount);
			companyService.companyBalanceModify(company);
			session.setAttribute("company", companyService.companyDetail(companyId));
		}
		model.addAttribute("dNWAmount", dNWAmount);
		return "message/withdrawMypage";
	}
	
	//회사마이페이지 심사중 펀딩 상품 보기
	@RequestMapping(value="auditFunding")
	public String auditFunding(String companyId,Model model) {
		FundingGoods good = fundingGoodsService.auditFunding(companyId);
		int fundingCode = good.getFundingCode();
		model.addAttribute("good", good);
		if(good.getFundingCategory() == 0) { //투자
			Reward reward = rewardService.fundingRewardList(fundingCode).get(0);
			model.addAttribute("reward", reward);
			model.addAttribute("companyDNWList", depositAndWithdrawalService.companyRewardDNWList(companyId, reward.getRewardCode()));
		}else {//리워드
			model.addAttribute("rewardList", rewardService.fundingRewardList(fundingCode));
		}
		return "message/myPageGoodsDetaill";
	}
	
	//회사마이페이지 진행중 펀딩 상품 보기
	@RequestMapping(value="ongoingFunding")
	public String ongoingFunding(String companyId,Model model) {
		FundingGoods good = fundingGoodsService.ongoingFunding(companyId);
		System.out.println("good"+good);
		int fundingCode = good.getFundingCode();
		model.addAttribute("good", good);
		if(good.getFundingCategory() == 0) { //투자
			Reward reward = rewardService.fundingRewardList(fundingCode).get(0);
			model.addAttribute("reward", reward);
			model.addAttribute("companyDNWList", depositAndWithdrawalService.companyRewardDNWList(companyId, reward.getRewardCode()));
		}else {//리워드
			model.addAttribute("rewardList", rewardService.fundingRewardList(fundingCode));
		}
		return "message/ongoingFunding";
	}
	//회사가 이자지급하기 클릭
	@RequestMapping(value="doInterestPayment")
	public String doInterestPayment(String adminId,String companyId,double changeMoneyDouble,int rewardCode,Model model) {
		int changeMoney = (int) changeMoneyDouble;
		Company company = new Company();
		company.setCompanyId(companyId);
		company.setChangeAccountBalance(changeMoney*-1);
		companyService.companyBalanceModify(company); //회사 잔액 감소
		Reward reward = rewardService.rewardDetail(rewardCode);
		notificationService.notificationWrite(new Notification(reward.getRewardName()+" 상품 이자 지급(총 "+reward.getFundingInvestmentPeriod()+"회/ "+(reward.getInvestmentReceiveCount()+1)+"회 지급)  지급 금액: "+changeMoney+"원", adminId, companyId, null)); //회사 알림창 증가
		DepositAndWithdrawal depositAndWithdrawal = new DepositAndWithdrawal(1, changeMoney*-1, companyService.companyDetail(companyId).getCompanyAccountBalance(), reward.getRewardName()+" 상품 고객에게 이자 지급", companyId, null, rewardCode);
		depositAndWithdrawalService.writeDepositAndWithdrawal(depositAndWithdrawal); //입출금 정보 등록
		int rewardInterst = reward.getRewardInterst(); //리워드 이자 %
		rewardService.rewardInvestmentReceiveCountUp(rewardCode); //이자 지급 횟수 증가
		List<FundingGoodsDetail> fundingDetailList = fundingDetailService.interestPaymentList(reward.getFundingCode()); //투자한 유저 리스트
		boolean principalPayment = false;
		if(reward.getInvestmentReceiveCount()+1==reward.getFundingInvestmentPeriod()) {//마지막 이자받음 원금 지급
			principalPayment = true;
		}else {
			rewardService.interestPaymentDayModify(rewardCode); //다음 이자 지급 예정일 30일 증가
		}
		int principalTotalSum = 0; //유저 원금 총 합하여 회사계좌에서 감소
		for(int i=0;i<fundingDetailList.size();i++) {
			String userId = fundingDetailList.get(i).getUserId();
			int dNWAmount = fundingDetailList.get(i).getFundingAmount()*rewardInterst/1200; // 투자한금액*이자율/100/12(개월) 이자받을금액
			usersService.userBalanceModify(userId, dNWAmount); //유저 잔액 추가++
			int dNWBalance = usersService.userDetail(userId).getUserAccountBalance();
			DepositAndWithdrawal userBalancePlus = new DepositAndWithdrawal(0, dNWAmount, dNWBalance, reward.getRewardName()+" 상품 이자 지급", null, userId, rewardCode);
			depositAndWithdrawalService.writeDepositAndWithdrawal(userBalancePlus); //입출금 정보 등록 (유저가 입금받음)
			notificationService.notificationWrite(new Notification(reward.getRewardName()+" 상품 이자 "+dNWAmount+"원 지급하엿습니다.", adminId, userId, null)); //유저 알림 작성
			usersService.userInterestAmountModify(userId, dNWAmount); //유저 누적 이자받은 금액 증가
			if(principalPayment) { //원금 지급로직
				int fundingAmount = fundingDetailList.get(i).getFundingAmount(); //유저가 투자한 원금
				principalTotalSum += fundingAmount;
				usersService.userBalanceModify(userId, fundingAmount); //유저 잔액 추가++
				int dNWBalanceTemp = usersService.userDetail(userId).getUserAccountBalance();
				DepositAndWithdrawal userBalancePlusPrincipal = new DepositAndWithdrawal(0, fundingAmount, dNWBalanceTemp, reward.getRewardName()+" 상품 원금 지급", null, userId, rewardCode);
				depositAndWithdrawalService.writeDepositAndWithdrawal(userBalancePlusPrincipal); //입출금 정보 등록 (유저가 입금받음)
				notificationService.notificationWrite(new Notification(reward.getRewardName()+" 상품 원금 "+fundingAmount+"원 지급하엿습니다.", adminId, userId, null)); //유저 알림 작성
			}
		}
		if(principalPayment) {// 원금 지급일 때
			company.setChangeAccountBalance(principalTotalSum*-1); //유저 원금 총 합
			companyService.companyBalanceModify(company); //회사 잔액 감소
			notificationService.notificationWrite(new Notification(reward.getRewardName()+" 상품 펀딩 종료로 고객에게 원금 지급 총 금액: "+principalTotalSum+"원이 계좌에서 출금되었습니다.", adminId, companyId, null)); //회사 알림창 증가
			DepositAndWithdrawal tempDepositAndWithdrawal = new DepositAndWithdrawal(1, principalTotalSum*-1, companyService.companyDetail(companyId).getCompanyAccountBalance(), reward.getRewardName()+" 상품 펀딩 종료로 고객에게 원금 지급", companyId, null, rewardCode);
			depositAndWithdrawalService.writeDepositAndWithdrawal(tempDepositAndWithdrawal); //입출금 정보 등록
		}
		
		return "redirect:myPageMain.do?companyId="+companyId;
	}
	// 알림 읽음 처리
	@RequestMapping(value = "readNotification")
	public String readNotification(int notificationNumber,String userId,String companyId,HttpSession session) {
		notificationService.notificationRead(notificationNumber); //알림 읽음 처리
		if(!companyId.equals("")) {//회사 일 때
			session.setAttribute("company", companyService.companyDetail(companyId));
		}else if(!userId.equals("")) {// 유저 일 때
			session.setAttribute("user", usersService.userDetail(userId));
		}
		return "message/noMessage";
	}
		
		
	// 네이버 로그인 콜백
	@RequestMapping(value = "naverCallback")
	public String naverCollback() {
		return "loginApi/naverLogin";
	}

	// 네이버 로그인 필요
	@RequestMapping(value = "loginPostNaver")
	public String loginPOSTNaver(HttpSession session) {
		return "users/loginPostNaver";
	}
	
	
}
