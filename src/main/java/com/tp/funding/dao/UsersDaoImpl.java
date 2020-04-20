package com.tp.funding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.Users;

@Repository
public class UsersDaoImpl implements UsersDao{
	@Autowired
	private SqlSession sessionTemplate;

	@Override
	public List<Users> userList() {
		return sessionTemplate.selectList("userList");
	}

	@Override
	public List<Users> userSearchList(String searchUserName) {
		return sessionTemplate.selectList("userSearchList",searchUserName);
	}

	@Override
	public int userJoin(Users user) {
		return sessionTemplate.insert("userJoin", user);
	}

	@Override
	public int userLoginCheck(Users user) {
		return sessionTemplate.selectOne("userLoginCheck", user);
	}

	@Override
	public Users userDetail(String userId) {
		return sessionTemplate.selectOne("userDetail",userId);
	}

	@Override
	public int userInfoModify(Users user) {
		return sessionTemplate.update("userInfoModify",user);
	}

	@Override
	public int userOutSite(String userId) {
		return sessionTemplate.update("userOutSite", userId);
	}

	@Override
	public int userAccountModify(Users user) {
		return sessionTemplate.update("userAccountModify", user);
	}

	@Override
	public int userBalanceModify(Users user) {
		return sessionTemplate.update("userBalanceModify", user);
	}

	@Override
	public int userGradeUp(String userId) {
		return sessionTemplate.update("userGradeUp", userId);
	}

	@Override
	public int userInvestmentAmountModify(String userId) {
		return sessionTemplate.update("userInvestmentAmountModify", userId);
	}

	@Override
	public int userInterestAmountModify(String userId) {
		return sessionTemplate.update("userInterestAmountModify", userId);
	}

	@Override
	public int userTempPassword(Users user) {
		return sessionTemplate.update("userTempPassword", user);
	}
	
	
}
