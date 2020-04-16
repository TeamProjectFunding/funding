package com.tp.funding.service;

import java.util.List;

import com.tp.funding.dto.Notification;

public interface NotificationService {
	public int notificationWrite(Notification notification);
	public int notificationRead(int notificationNumber);
	public List<Notification> notificationUnReadCompanyList(String companyId);
	public List<Notification> notificationUnReadUserList(String userId);
	public List<Notification> notificationReadCompanyList(String companyId);
	public List<Notification> notificationReadUserList(String userId);
}
