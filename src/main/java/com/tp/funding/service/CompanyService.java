package com.tp.funding.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tp.funding.dto.Company;

public interface CompanyService {
	public List<Company> companyList(); //페이징
	public List<Company> companySearchList(String companyName);
	public Company companyDetail(String companyId);
	public int companyJoin(MultipartHttpServletRequest mRequest, Company company);
	public int companyLoginCheck(Company company);
	public int companyInfoModify(MultipartHttpServletRequest mRequest, Company company);
	public int companyOutSite(String companyId);
	public int companyAccountModify(Company company);
	public int companyBalanceModify(Company company);
	public int companyInFundingModify(int companyInFunding,String companyId);
	public int tempPasswordChange(Company company);
	public int companyFundraisingSuccess(Company company);
}
