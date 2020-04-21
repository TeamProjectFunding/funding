package com.tp.funding.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tp.funding.dto.Company;
import com.tp.funding.dto.Users;

public interface UsersService {
	public List<Users> userList();
	public List<Users> userSearchList(String searchUserName);
	public int userJoin(MultipartHttpServletRequest mRequest, Users user);
	public int userLoginCheck(Users user);
	public Users userDetail(String userId);
	public int userInfoModify(Users user);
	public int userOutSite(String userId);
	public int userAccountModify(String userId,String userBankName,String userAccountNumber);
	public int userBalanceModify(String userId,int changeMoneyAmount);
	public int userGradeUp(String userId);
	public int userInvestmentAmountModify(String userId,int changeMoneyAmount);
	public int userInterestAmountModify(String userId,int changeMoneyAmount);	
	public int tempPasswordChange(Users user);	
}
