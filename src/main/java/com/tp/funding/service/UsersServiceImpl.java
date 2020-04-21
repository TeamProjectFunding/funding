package com.tp.funding.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tp.funding.dao.UsersDao;
import com.tp.funding.dto.Users;
import com.tp.funding.util.FileCopy;

@Service
public class UsersServiceImpl implements UsersService {
	@Autowired
	private UsersDao userDao;

	@Override
	public List<Users> userList() {
		return userDao.userList();
	}

	@Override
	public List<Users> userSearchList(String searchUserName) {
		return userDao.userSearchList(searchUserName);
	}

	@Override
	public int userJoin(MultipartHttpServletRequest mRequest, Users user) {
		String uploadPath = mRequest.getRealPath("images/profile/");
		String backupPath = "D:/mega_IT/teamProject/funding/src/main/webapp/images/profile/";
		String userProfileImage = null;

		Iterator<String> params = mRequest.getFileNames(); // file
		if (params.hasNext()) {
			String param = params.next();
			MultipartFile mFile = mRequest.getFile(param); // 파라미터의 파일 객체

			String originalFileName = mFile.getOriginalFilename(); // 업로드 했을 때, 원래 파일 이름
			userProfileImage = originalFileName;

			if (userProfileImage != null && !userProfileImage.equals("")) {
				if (new File(uploadPath + userProfileImage).exists()) { // 첨부파일과 같은 이름의 파일이 서버에 존재하는 경우 변경~
					userProfileImage = System.currentTimeMillis() + userProfileImage;
				} // if 파일이름 변경

				try {
					mFile.transferTo(new File(uploadPath + userProfileImage));
					System.out.println("서버에 저장된 파일 : " + uploadPath + userProfileImage);
					System.out.println("백업위해 복사할 파일 : " + backupPath + userProfileImage);
					FileCopy filecopyClass = new FileCopy();
					int fileResult = filecopyClass.filecopy(uploadPath + userProfileImage, backupPath + userProfileImage);
					if (fileResult == 1) {
						System.out.println("복사성공");
					} else {
						System.out.println("복사실패");
					}

				} catch (IOException e) {
					System.out.println(e.getMessage());
				}
			}

		}

		user.setUserProfileImage(userProfileImage);
		return userDao.userJoin(user);
	}

	
	@Override
	public int userLoginCheck(Users user) {
		return userDao.userLoginCheck(user);
	}

	@Override
	public Users userDetail(String userId) {
		return userDao.userDetail(userId);
	}

	@Override
	public int userInfoModify(Users user) {
		return userDao.userInfoModify(user);
	}

	@Override
	public int userOutSite(String userId) {
		return userDao.userOutSite(userId);
	}


	@Override
	public int userGradeUp(String userId) {
		return userDao.userGradeUp(userId);
	}

	@Override
	public int userBalanceModify(String userId, int changeMoneyAmount) {
		Users user = new Users();
		user.setUserId(userId);
		user.setChangeMoneyAmount(changeMoneyAmount);
		return userDao.userBalanceModify(user);
	}

	@Override
	public int userInvestmentAmountModify(String userId, int changeMoneyAmount) {
		Users user = new Users();
		user.setUserId(userId);
		user.setChangeMoneyAmount(changeMoneyAmount);
		return userDao.userInvestmentAmountModify(userId);
	}

	@Override
	public int userInterestAmountModify(String userId, int changeMoneyAmount) {
		Users user = new Users();
		user.setUserId(userId);
		user.setChangeMoneyAmount(changeMoneyAmount);
		return userDao.userInterestAmountModify(userId);
	}

	@Override
	public int userAccountModify(String userId, String userBankName, String userAccountNumber) {
		Users user = new Users();
		user.setUserId(userId);
		user.setUserBankName(userBankName);
		user.setUserAccountNumber(userAccountNumber);
		return userDao.userAccountModify(user);
	}

	


}
