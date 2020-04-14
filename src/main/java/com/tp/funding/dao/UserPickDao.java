package com.tp.funding.dao;

import java.util.List;

import com.tp.funding.dto.UserPick;

public interface UserPickDao {
	public int userPickAdd(UserPick userPick);
	public int userPickDelete(int userPickNumber);
	public List<UserPick> userPickList(UserPick userPick);
}
