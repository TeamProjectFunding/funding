package com.tp.funding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.UserPick;

@Repository
public class UserPickDaoImpl implements UserPickDao {
	@Autowired
	private SqlSession sessionTemplate;
	
	
	@Override
	public int userPickAdd(UserPick userPick) {
		return sessionTemplate.insert("userPickAdd", userPick);
	}

	@Override
	public int userPickDelete(UserPick userPick) {
		return sessionTemplate.delete("userPickDelete", userPick);
	}

	@Override
	public List<UserPick> userPickList(UserPick userPick) {
		return sessionTemplate.selectList("userPickList", userPick);
	}

	@Override
	public int userPickCheck(UserPick userPick) {
		return sessionTemplate.selectOne("userPickCheck", userPick);
	}

}
