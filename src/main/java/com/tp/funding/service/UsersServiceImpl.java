package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.UsersDao;
import com.tp.funding.dto.Users;
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
	public int userJoin(Users user) {
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
	public int userAccountModify(Users user) {
		return userDao.userAccountModify(user);
	}

	@Override
	public int userBalanceModify(Users user) {
		return userDao.userBalanceModify(user);
	}

	@Override
	public int userGradeUp(String userId) {
		return userDao.userGradeUp(userId);
	}

	@Override
	public int userInvestmentAmountModify(String userId) {
		return userDao.userInvestmentAmountModify(userId);
	}

	@Override
	public int userInterestAmountModify(String userId) {
		return userDao.userInterestAmountModify(userId);
	}

}
