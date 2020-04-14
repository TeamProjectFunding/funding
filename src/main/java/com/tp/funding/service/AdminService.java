package com.tp.funding.service;

import com.tp.funding.dto.Admin;

public interface AdminService {
	public int adminLoginCheck(Admin admin);
	public Admin adminDetail(String adminId);
}
