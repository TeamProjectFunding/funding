package com.tp.funding.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tp.funding.dto.Users;


public interface UsersDao {
	public List<Users> userList();
	public List<Users> userSearchList(String searchUserName);
	public int userJoin(Users user);
	public int userLoginCheck(Users user);
	public Users userDetail(String userId);
	public int userInfoModify(Users user);
	public int userOutSite(String userId);
	public int userAccountModify(Users user);
	public int userBalanceModify(Users user);
	public int userGradeUp(String userId);
	public int userInvestmentAmountModify(Users user);
	public int userInterestAmountModify(Users user);	
	public int tempPasswordChange(Users user);	
	public int userCurrentGrade(String userId);	
	public int fundraisingFailureReturnMoney(Users user);
}
