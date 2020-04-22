package com.tp.funding.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tp.funding.dao.FundingGoodsDao;
import com.tp.funding.dto.FundingGoods;
import com.tp.funding.util.Paging;
@Service
public class FundingGoodsServiceImpl implements FundingGoodsService {

	@Autowired
	private FundingGoodsDao fundingGoodsDao ;
	
	@Override
	public List<FundingGoods> fundingOpenList(FundingGoods fundingGoods) { // 페이징
		return fundingGoodsDao.fundingOpenList(fundingGoods);
	}

	@Override
	public List<FundingGoods> fundingCloseList(FundingGoods fundingGoods) { // 페이징
		return fundingGoodsDao.fundingCloseList(fundingGoods);
	}

	@Override
	public List<FundingGoods> fundingSearchList(String FundingName) { 
		return fundingGoodsDao.fundingSearchList(FundingName);
	}

	@Override
	public List<FundingGoods> searchFundingKeyUpTop5() {
		return fundingGoodsDao.searchFundingKeyUpTop5();
	}

	@Override
	public List<FundingGoods> investmentAllList(String pageNum,Model model) {
		// pageSize = 6, BlockSize = 5
		int investmentTotalCount = investmentTotalCount();
		Paging paging = new Paging(investmentTotalCount, pageNum, 6, 5);
		// 페이징 처리
		if(model != null) {
			model.addAttribute("paging", paging);
		}
		FundingGoods fundingGoods = new FundingGoods();
		fundingGoods.setStartRow(paging.getStartRow());
		fundingGoods.setEndRow(paging.getEndRow());
		return fundingGoodsDao.investmentAllList(fundingGoods);
	}

	@Override
	public List<FundingGoods> rewardAllList(String pageNum,Model model) {
		int rewardTotalCount = rewardTotalCount();
		Paging paging = new Paging(rewardTotalCount, pageNum, 6, 5);
		// 페이징 처리
		if(model !=null) {
			model.addAttribute("paging", paging);
		}
		FundingGoods fundingGoods = new FundingGoods();
		fundingGoods.setStartRow(paging.getStartRow());
		fundingGoods.setEndRow(paging.getEndRow());
		return fundingGoodsDao.rewardAllList(fundingGoods);
	}

	@Override
	public FundingGoods fundingDetail(int fundingCode) {
		return fundingGoodsDao.fundingDetail(fundingCode);
	}

	@Override
	public int fundingRegist(FundingGoods fundingGoods,MultipartHttpServletRequest mRequest) {
		String uploadPath = mRequest.getRealPath("images/goods/");
		String backupPath = "D:/mega_IT/teamProject/funding/src/main/webapp/images/goods/";
		String fundingThumbnailImage = null,fundingDetailImage = null, fundingExplanationFile=null;
		Iterator<String> params = mRequest.getFileNames(); // file
		int index = 0;
//		while (params.hasNext()) {
//			String param = params.next();
//			MultipartFile mFile = mRequest.getFile(param); // 파라미터의 파일 객체
//
//			String originalFileName = mFile.getOriginalFilename(); // 업로드 했을 때, 원래 파일 이름
//			userProfileImage = originalFileName;
//
//			if (userProfileImage != null && !userProfileImage.equals("")) {
//				if (new File(uploadPath + userProfileImage).exists()) { // 첨부파일과 같은 이름의 파일이 서버에 존재하는 경우 변경~
//					userProfileImage = System.currentTimeMillis() + userProfileImage;
//				} // if 파일이름 변경
//
//				try {
//					mFile.transferTo(new File(uploadPath + userProfileImage));
//					System.out.println("서버에 저장된 파일 : " + uploadPath + userProfileImage);
//					System.out.println("백업위해 복사할 파일 : " + backupPath + userProfileImage);
//					int fileResult = filecopy(uploadPath + userProfileImage, backupPath + userProfileImage);
//					if (fileResult == 1) {
//						System.out.println("복사성공");
//					} else {
//						System.out.println("복사실패");
//					}
//
//				} catch (IOException e) {
//					System.out.println(e.getMessage());
//				}
//			}
//
//		}
		return fundingGoodsDao.fundingRegist(fundingGoods);
	}

	@Override
	public int fundingAccountAdd(FundingGoods fundingGoods) {
		return fundingGoodsDao.fundingAccountAdd(fundingGoods);
	}

	@Override
	public int fundingAdminPermitYes(int fundingCode) {
		return fundingGoodsDao.fundingAdminPermitYes(fundingCode);
	}

	@Override
	public int fundingAdminPermitNo(int fundingCode) {
		return fundingGoodsDao.fundingAdminPermitNo(fundingCode);
	}

	@Override
	public int fundingPeopleCountUp(int fundingCode) {
		return fundingGoodsDao.fundingPeopleCountUp(fundingCode);
	}

	
	@Override
	public int fundingTargetRateModify(int fundingCode) {
		return fundingGoodsDao.fundingTargetRateModify(fundingCode);
	}

	@Override
	public int fundingSuccess(int fundingCode) {
		return fundingGoodsDao.fundingSuccess(fundingCode);
	}

	@Override
	public int fundingFailure(int fundingCode) {
		return fundingGoodsDao.fundingFailure(fundingCode);
	}

	@Override
	public int fundingBalanceMove(int fundingCode) {
		return fundingGoodsDao.fundingBalanceMove(fundingCode);
	}

	@Override
	public int investmentTotalCount() {
		return fundingGoodsDao.investmentTotalCount();
	}

	@Override
	public int rewardTotalCount() {
		return fundingGoodsDao.rewardTotalCount();
	}

	@Override
	public List<FundingGoods> fundingReadyList(FundingGoods fundingGoods) {		
		return fundingGoodsDao.fundingReadyList(fundingGoods);		
	}
	
	@Override
	public List<FundingGoods> fundingDeadlineList() {
		return fundingGoodsDao.fundingDeadlineList();
	}

	@Override
	public int fundingBalancePlus(int fundingCode, int changeMoneyAmount) {
		FundingGoods fundingGoods = new FundingGoods();
		fundingGoods.setFundingCode(fundingCode);
		fundingGoods.setChangeMoneyAmount(changeMoneyAmount);
		return fundingGoodsDao.fundingBalancePlus(fundingGoods);
	}

	@Override
	public int totCntReadyList() {
		return fundingGoodsDao.totCntReadyList();
	}

	@Override
	public int totCntOpenList() {
		return fundingGoodsDao.totCntOpenList();
	}	

	@Override
	public List<FundingGoods> investmentOpenList(String pageNum, Model model) {
		// pageSize = 6, BlockSize = 5
				int investmentTotalCount = investmentTotalCount();
				Paging paging = new Paging(investmentTotalCount, pageNum, 6, 5);
				// 페이징 처리
				if(model != null) {
					model.addAttribute("paging", paging);
				}
				FundingGoods fundingGoods = new FundingGoods();
				fundingGoods.setStartRow(paging.getStartRow());
				fundingGoods.setEndRow(paging.getEndRow());
				return fundingGoodsDao.investmentOpenList(fundingGoods);
	}

	@Override
	public List<FundingGoods> rewardOpenList(String pageNum, Model model) {
		int rewardTotalCount = rewardTotalCount();
		Paging paging = new Paging(rewardTotalCount, pageNum, 6, 5);
		// 페이징 처리
		if(model !=null) {
			model.addAttribute("paging", paging);
		}
		FundingGoods fundingGoods = new FundingGoods();
		fundingGoods.setStartRow(paging.getStartRow());
		fundingGoods.setEndRow(paging.getEndRow());
		return fundingGoodsDao.rewardOpenList(fundingGoods);
	}

}
