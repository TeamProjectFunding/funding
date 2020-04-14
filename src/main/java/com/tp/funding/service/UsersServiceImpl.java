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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Users> userSearchList(String searchUserName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int userJoin(Users user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int userLoginCheck(Users user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Users userDetail(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int userInfoModify(Users user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int userOutSite(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int userAccountModify(Users user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int userBalanceModify(Users user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int userGradeUp(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int userInvestmentAmountModify(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int userInterestAmountModify(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
