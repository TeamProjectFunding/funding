package com.tp.funding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.funding.dto.Notification;
@Repository
public class NotificationDaoImpl implements NotificationDao {
	@Autowired
	private SqlSession sessionTemplate;
	@Override
	public int notificationWrite(Notification notification) {
		return sessionTemplate.insert("notificationWrite", notification);
	}

	@Override
	public int notificationRead(int notificationNumber) {
		return sessionTemplate.update("notificationRead", notificationNumber);
	}

	@Override
	public List<Notification> notificationUnReadCompanyList(String companyId) {
		return sessionTemplate.selectList("notificationUnReadCompanyList", companyId);
	}

	@Override
	public List<Notification> notificationUnReadUserList(String userId) {
		return sessionTemplate.selectList("notificationUnReadUserList", userId);
	}

	@Override
	public List<Notification> notificationReadCompanyList(String companyId) {
		return sessionTemplate.selectList("notificationReadCompanyList", companyId);
	}

	@Override
	public List<Notification> notificationReadUserList(String userId) {
		return sessionTemplate.selectList("notificationReadUserList", userId);
	}

}
