package com.tp.funding.dao;

import java.util.List;

import com.tp.funding.dto.DepositAndWithdrawal;

public interface DepositAndWithdrawalDao {
	public int writeDepositAndWithdrawal(DepositAndWithdrawal depositAndWithdrawal);
	public List<DepositAndWithdrawal> userDNWList(String userId);
	public List<DepositAndWithdrawal> companyDNWList(String companyId);
	public List<DepositAndWithdrawal> userRewardDNWList(DepositAndWithdrawal depositAndWithdrawal);
	public List<DepositAndWithdrawal> companyRewardDNWList(DepositAndWithdrawal depositAndWithdrawal);
}
