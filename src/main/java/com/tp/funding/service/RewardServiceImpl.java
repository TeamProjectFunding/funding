package com.tp.funding.service;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tp.funding.dao.RewardDao;
import com.tp.funding.dto.Reward;
import com.tp.funding.util.FileCopy;

@Service
public class RewardServiceImpl implements RewardService {
	@Autowired
	private RewardDao rewardDao;
	
	@Override
	public int investmentWrite(Reward reward) {
		return rewardDao.rewardWrite(reward);
	}
	
	@Override
	public int rewardWrite(Reward[] reward,MultipartHttpServletRequest mRequest) {
		String uploadPath = mRequest.getRealPath("images/reward/");
		String backupPath = "D:/mega_IT/teamProject/funding/src/main/webapp/images/reward/";
		String rewardImage = "";
		Iterator<String> params = mRequest.getFileNames(); // file
		int index = 0;
		boolean rewardWriteSuccess = false;
		while (true) {
			if(index==0) {
				params.next();
				params.next();
				params.next();
			}
			if(index>=reward.length) {
				break;
			}
			String param = params.next();
			MultipartFile mFile = mRequest.getFile(param); // 파라미터의 파일 객체
			String originalFileName = mFile.getOriginalFilename(); // 업로드 했을 때, 원래 파일 이름
			rewardImage = originalFileName;
			
			if (rewardImage != null && !rewardImage.equals("")) {
				if (new File(uploadPath + rewardImage).exists()) { // 첨부파일과 같은 이름의 파일이 서버에 존재하는 경우 변경~
					rewardImage = System.currentTimeMillis() + rewardImage;
				} // if 파일이름 변경
				reward[index].setRewardImage(rewardImage);
				try {
					mFile.transferTo(new File(uploadPath + rewardImage));
					FileCopy filecopy = new FileCopy();
					int fileResult = filecopy.filecopy(uploadPath + rewardImage, backupPath + rewardImage);
					if (fileResult == 1) {
						System.out.println("복사성공");
						
					} else {
						System.out.println("복사실패");
					}

				} catch (IOException e) {
					System.out.println(e.getMessage());
				}
			}
			if(rewardDao.rewardWrite(reward[index])==0) {
				rewardWriteSuccess = false;
			}
			index++;
		}
		return rewardWriteSuccess?1:0;
	}

	@Override
	public int rewardInvestmentReceiveCountUp(int rewardCode) {
		return rewardDao.rewardInvestmentReceiveCountUp(rewardCode);
	}

	@Override
	public Reward rewardDetail(int rewardCode) {
		return rewardDao.rewardDetail(rewardCode);
	}

	@Override
	public List<Reward> fundingRewardList(int fundingCode) {
		return rewardDao.fundingRewardList(fundingCode);
	}

	

}
