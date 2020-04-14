package com.tp.funding.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.Admin;
@Repository
public class AdminDaoImpl implements AdminDao {
	@Autowired
	private SqlSession sessionTemplate;
	@Override
	public int adminLoginCheck(Admin admin) {
		return sessionTemplate.selectOne("adminLoginCheck", admin);
	}

	@Override
	public Admin adminDetail(String adminId) {
		return sessionTemplate.selectOne("adminDetail", adminId);
		
	}

}
