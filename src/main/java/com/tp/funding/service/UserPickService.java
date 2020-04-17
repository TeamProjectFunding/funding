package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.UserPick;

public interface UserPickService {
	public int userPickAdd(String userId,int fundingCode);
	public int userPickDelete(String userId,int fundingCode);
	public List<UserPick> userPickList(UserPick userPick);
	public int userPickCheck(String userId, int fundingCode);
}
