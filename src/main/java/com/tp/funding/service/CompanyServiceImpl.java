package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.CompanyDao;
import com.tp.funding.dto.Company;

@Service
public class CompanyServiceImpl implements CompanyService {
	@Autowired
	private CompanyDao companyDao;
	
	@Override
	public List<Company> companyList() {
		return companyDao.companyList();
	}

	@Override
	public List<Company> companySearchList(String companyName) {
		return companyDao.companySearchList(companyName);
	}

	@Override
	public Company companyDetail(String companyId) {
		return companyDao.companyDetail(companyId);
	}

	@Override
	public int companyJoin(Company company) {
		return companyDao.companyJoin(company);
	}

	@Override
	public int companyLoginCheck(Company company) {
		return companyDao.companyLoginCheck(company);
	}

	@Override
	public int companyInfoModify(Company company) {
		return companyDao.companyInfoModify(company);
	}

	@Override
	public int companyOutSite(String companyId) {
		return companyDao.companyOutSite(companyId);
	}

	@Override
	public int companyAccountModify(Company company) {
		return companyDao.companyAccountModify(company);
	}

	@Override
	public int companyBalanceModify(Company company) {
		return companyDao.companyBalanceModify(company);
	}

	@Override
	public int companyInFundingModify(Company company) {
		return companyDao.companyInFundingModify(company);
	}

}
