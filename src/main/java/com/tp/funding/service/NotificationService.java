package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.Notification;

public interface NotificationService {
	public int notificationWrite(Notification notification);
	public int notificationRead(int notificationNumber);
	public List<Notification> notificationUnReadCompanyList(Notification notification);
	public List<Notification> notificationUnReadUserList(Notification notification);
	public List<Notification> notificationReadCompanyList(Notification notification);
	public List<Notification> notificationReadUserList(Notification notification);
}
