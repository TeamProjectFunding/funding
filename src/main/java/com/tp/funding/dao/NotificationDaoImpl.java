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
	public List<Notification> notificationUnReadCompanyList(Notification notification) {
		return sessionTemplate.selectList("notificationUnReadCompanyList", notification);
	}

	@Override
	public List<Notification> notificationUnReadUserList(Notification notification) {
		return sessionTemplate.selectList("notificationUnReadUserList", notification);
	}

	@Override
	public List<Notification> notificationReadCompanyList(Notification notification) {
		return sessionTemplate.selectList("notificationReadCompanyList", notification);
	}

	@Override
	public List<Notification> notificationReadUserList(Notification notification) {
		return sessionTemplate.selectList("notificationReadUserList", notification);
	}

}
