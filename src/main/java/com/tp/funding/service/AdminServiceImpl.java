package com.tp.funding.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.AdminDao;
import com.tp.funding.dto.Admin;
@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDao adminDao;
	@Override
	public int adminLoginCheck(Admin admin) {
		return adminDao.adminLoginCheck(admin);
	}

	@Override
	public Admin adminDetail(String adminId) {
		return adminDao.adminDetail(adminId);
	}

}
