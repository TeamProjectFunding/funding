package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.UserPick;

public interface UserPickService {
	public int userPickAdd(UserPick userPick);
	public int userPickDelete(int userPickNumber);
	public List<UserPick> userPickList(UserPick userPick);
}
