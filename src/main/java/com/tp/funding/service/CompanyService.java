package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.Company;

public interface CompanyService {
	public List<Company> companyList(); //페이징
	public List<Company> companySearchList(String companyName);
	public Company companyDetail(String companyId);
	public int companyJoin(Company company);
	public int companyLoginCheck(Company company);
	public int companyInfoModify(Company company);
	public int companyOutSite(String companyId);
	public int companyAccountModify(Company company);
	public int companyBalanceModify(Company company);
	public int companyInFundingModify(Company company);
}
