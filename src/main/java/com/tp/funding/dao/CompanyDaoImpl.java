package com.tp.funding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.Company;

@Repository
public class CompanyDaoImpl implements CompanyDao {
	@Autowired
	private SqlSession sessionTemplate;
	
	@Override
	public List<Company> companyList() {
		return sessionTemplate.selectList("companyList");
	}

	@Override
	public List<Company> companySearchList(String companyName) {
		return sessionTemplate.selectList("companySearchList", companyName);
	}

	@Override
	public Company companyDetail(String companyId) {
		return sessionTemplate.selectOne("companyDetail", companyId);
	}

	@Override
	public int companyJoin(Company company) {
		return sessionTemplate.insert("companyJoin", company);
	}

	@Override
	public int companyLoginCheck(Company company) {
		return sessionTemplate.selectOne("companyLoginCheck",company);
	}

	@Override
	public int companyInfoModify(Company company) {
		return sessionTemplate.update("companyInfoModify", company);
	}

	@Override
	public int companyOutSite(String companyId) {
		return sessionTemplate.update("companyOutSite", companyId);
	}

	@Override
	public int companyAccountModify(Company company) {
		return sessionTemplate.update("companyAccountModify", company);
	}

	@Override
	public int companyBalanceModify(Company company) {
		return sessionTemplate.update("companyBalanceModify", company);
	}

	@Override
	public int companyInFundingModify(Company company) {
		return sessionTemplate.update("companyInFundingModify", company);
	}

	@Override
	public int tempPasswordChange(Company company) {
		return sessionTemplate.update("tempPasswordCompanyChange", company);
	}

	@Override
	public int companyFundraisingSuccess(Company company) {
		return sessionTemplate.update("companyFundraisingSuccess", company);
	}

}
