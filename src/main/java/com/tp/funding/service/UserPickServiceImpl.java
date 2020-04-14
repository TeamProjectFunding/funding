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
	public int userPickAdd(UserPick userPick) {
		return userPickdao.userPickAdd(userPick);
	}

	@Override
	public int userPickDelete(int userPickNumber) {
		return userPickdao.userPickDelete(userPickNumber);
	}

	@Override
	public List<UserPick> userPickList(UserPick userPick) {
		return userPickdao.userPickList(userPick);
	}

}
