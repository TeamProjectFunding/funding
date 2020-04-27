package com.tp.funding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.DepositAndWithdrawal;
@Repository
public class DepositAndWithdrawalDaoImpl implements DepositAndWithdrawalDao {
	@Autowired
	private SqlSession sessionTemplate;
	
	@Override
	public int writeDepositAndWithdrawal(DepositAndWithdrawal depositAndWithdrawal) {
		return sessionTemplate.insert("writeDepositAndWithdrawal", depositAndWithdrawal);
	}

	@Override
	public List<DepositAndWithdrawal> userDNWList(String userId) {
		return sessionTemplate.selectList("userDNWList", userId);
	}

	@Override
	public List<DepositAndWithdrawal> companyDNWList(String companyId) {
		return sessionTemplate.selectList("companyDNWList", companyId);
	}

}
