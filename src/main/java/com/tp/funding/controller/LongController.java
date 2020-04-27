package com.tp.funding.controller;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tp.funding.dto.FundingGoods;
import com.tp.funding.dto.FundingGoodsComments;
import com.tp.funding.dto.FundingGoodsCommentsReply;
import com.tp.funding.dto.FundingGoodsDetail;
import com.tp.funding.dto.Notice;
import com.tp.funding.dto.Reward;
import com.tp.funding.dto.UserPick;
import com.tp.funding.dto.Users;
import com.tp.funding.service.FgCommentsReplyService;
import com.tp.funding.service.FgCommentsService;
import com.tp.funding.service.FundingDetailService;
import com.tp.funding.service.FundingGoodsService;
import com.tp.funding.service.FundingNewsService;
import com.tp.funding.service.NoticeService;
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
	public String goodsCommentReplyView(int fgCommentsNumber,Model model) {
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
			model.addAttribute("userPickResult", false); // 찜 삭제
		} else {// 찜 추가 안했으면 찜 추가로직
			userPickService.userPickAdd(userId, fundingCode);
			model.addAttribute("userPickResult", true);
		}
		return "message/userPickResult";
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
	
	
	//마이페이지 펀딩진행 내역
	@RequestMapping(value="myPageGoods")
	public String myPageGoods(String companyId,Model model,String pageNum) {//회사 그래프
		System.out.println("pageNum="+pageNum);
		List<FundingGoods> companyEndFundingList = fundingGoodsService.companyEndFundingList(companyId,pageNum,model);
		model.addAttribute("companyEndFundingList", companyEndFundingList);
		for(FundingGoods c : companyEndFundingList) {
			System.out.println(c);
		}
		for(int i=0;i<companyEndFundingList.size();i++) {
			int fundingCode = companyEndFundingList.get(i).getFundingCode();
			model.addAttribute("reward"+fundingCode, rewardService.fundingRewardList(fundingCode));
			System.out.println("i="+i);
			for(Reward r : rewardService.fundingRewardList(fundingCode)) {
				System.out.println(r);
			}
		}
		model.addAttribute("doFundingCount", companyEndFundingList.size());
		model.addAttribute("maxRecruitmentAmount", fundingGoodsService.maxRecruitmentAmount(companyId,pageNum,model));
		System.out.println("doFundingCount:"+companyEndFundingList.size());
		return "myPage/myPageGoods";
	}
	//마이페이지 펀딩내역 그래프
	@RequestMapping(value="myPageFunding")
	public String myPageFunding(String userId,Model model,String pageNum) {//유저그래프
		return "myPage/myPageFunding";
	}
	//마이페이지 그래프 속 Detail
	@RequestMapping(value="fundingDetailView")
	public String fundingDetailView(int fundingCode,Model model) {
		System.out.println("fundingDetailView들어옴");
		FundingGoods good = fundingGoodsService.fundingDetail(fundingCode);
		model.addAttribute("good", good);
		if(good.getFundingCategory() == 0) { //투자
			model.addAttribute("reward", rewardService.fundingRewardList(fundingCode).get(0));
		}else {//리워드
			model.addAttribute("rewardList", rewardService.fundingRewardList(fundingCode));
		}
		return "message/myPageGoodsDetaill";
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
