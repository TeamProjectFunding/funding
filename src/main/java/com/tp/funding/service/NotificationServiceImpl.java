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
	public List<Notification> notificationUnReadCompanyList(Notification notification) {
		return notificationDao.notificationUnReadCompanyList(notification);
	}

	@Override
	public List<Notification> notificationUnReadUserList(Notification notification) {
		return notificationDao.notificationUnReadUserList(notification);
	}

	@Override
	public List<Notification> notificationReadCompanyList(Notification notification) {
		return notificationDao.notificationReadCompanyList(notification);
	}

	@Override
	public List<Notification> notificationReadUserList(Notification notification) {
		return notificationDao.notificationReadUserList(notification);
	}

}
