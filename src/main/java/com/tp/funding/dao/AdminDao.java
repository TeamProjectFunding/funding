package com.tp.funding.dao;

import com.tp.funding.dto.Admin;

public interface AdminDao {
	public int adminLoginCheck(Admin admin);
	public Admin adminDetail(String adminId);
}
