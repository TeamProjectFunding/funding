package com.tp.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.funding.dao.NotificationDao;
import com.tp.funding.dto.Notification;
@Service
public class NotificationServiceImpl implements NotificationService {
	@Autowired
	private NotificationDao notificationDao;
	@Override
	public int notificationWrite(Notification notification) {
		return notificationDao.notificationWrite(notification);
	}

	@Override
	public int notificationRead(int notificationNumber) {
		return notificationDao.notificationRead(notificationNumber);
	}

	@Override
	public List<Notification> notificationUnReadCompanyList(String companyId) {
		return notificationDao.notificationUnReadCompanyList(companyId);
	}

	@Override
	public List<Notification> notificationUnReadUserList(String userId) {
		return notificationDao.notificationUnReadUserList(userId);
	}

	@Override
	public List<Notification> notificationReadCompanyList(String companyId) {
		return notificationDao.notificationReadCompanyList(companyId);
	}

	@Override
	public List<Notification> notificationReadUserList(String userId) {
		return notificationDao.notificationReadUserList(userId);
	}

	@Override
	public int eventRaffleUserSend(Notification notification) {
		return notificationDao.eventRaffleUserSend(notification);
	}

}
