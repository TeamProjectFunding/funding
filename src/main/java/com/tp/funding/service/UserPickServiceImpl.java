package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.UserPickDao;
import com.tp.funding.dto.UserPick;

@Service
public class UserPickServiceImpl implements UserPickService {
	@Autowired
	UserPickDao userPickdao;
	
	@Override
	public int userPickAdd(String userId,int fundingCode) {
		UserPick userPick = new UserPick();
		userPick.setUserId(userId);
		userPick.setFundingCode(fundingCode);
		return userPickdao.userPickAdd(userPick);
	}

	@Override
	public int userPickDelete(UserPick userPick) {
		
		return userPickdao.userPickDelete(userPick);
	}

	@Override
	public List<UserPick> userPickList(UserPick userPick) {
		return userPickdao.userPickList(userPick);
	}

	@Override
	public int userPickCheck(String userId, int fundingCode) {
		UserPick userPick = new UserPick();
		userPick.setUserId(userId);
		userPick.setFundingCode(fundingCode);
		return userPickdao.userPickCheck(userPick);
	}

}
