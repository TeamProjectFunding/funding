package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.DepositAndWithdrawalDao;
import com.tp.funding.dto.DepositAndWithdrawal;
@Service
public class DepositAndWithdrawalServiceImpl implements DepositAndWithdrawalService {
	@Autowired
	private DepositAndWithdrawalDao depositAndWithdrawalDao;
	
	@Override
	public int writeDepositAndWithdrawal(DepositAndWithdrawal depositAndWithdrawal) {
		return depositAndWithdrawalDao.writeDepositAndWithdrawal(depositAndWithdrawal);
	}

	@Override
	public List<DepositAndWithdrawal> userDNWList(String userId) {
		return depositAndWithdrawalDao.userDNWList(userId);
	}

	@Override
	public List<DepositAndWithdrawal> companyDNWList(String companyId) {
		return depositAndWithdrawalDao.companyDNWList(companyId);
	}

	@Override
	public List<DepositAndWithdrawal> userRewardDNWList(String userId, int rewardCode) {
		DepositAndWithdrawal depositAndWithdrawal = new DepositAndWithdrawal();
		depositAndWithdrawal.setUserId(userId);
		depositAndWithdrawal.setRewardCode(rewardCode);
		return depositAndWithdrawalDao.userRewardDNWList(depositAndWithdrawal);
	}

	@Override
	public List<DepositAndWithdrawal> companyRewardDNWList(String companyId, int rewardCode) {
		DepositAndWithdrawal depositAndWithdrawal = new DepositAndWithdrawal();
		depositAndWithdrawal.setCompanyId(companyId);
		depositAndWithdrawal.setRewardCode(rewardCode);
		return depositAndWithdrawalDao.companyRewardDNWList(depositAndWithdrawal);
	}

}
