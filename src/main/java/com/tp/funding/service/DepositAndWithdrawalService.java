package com.tp.funding.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tp.funding.dto.Company;
import com.tp.funding.dto.DepositAndWithdrawal;

public interface DepositAndWithdrawalService {
	public int writeDepositAndWithdrawal(DepositAndWithdrawal depositAndWithdrawal);
	public List<DepositAndWithdrawal> userDNWList(String userId);
	public List<DepositAndWithdrawal> companyDNWList(String companyId);
	public List<DepositAndWithdrawal> userRewardDNWList(String userId,int rewardCode);
	public List<DepositAndWithdrawal> companyRewardDNWList(String companyId,int rewardCode);
}
