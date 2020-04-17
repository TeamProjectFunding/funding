package com.tp.funding.dao;

import java.util.List;

import com.tp.funding.dto.UserPick;

public interface UserPickDao {
	public int userPickAdd(UserPick userPick);
	public int userPickDelete(UserPick userPick);
	public List<UserPick> userPickList(UserPick userPick);
	public int userPickCheck(UserPick userPick);
}
