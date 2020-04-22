package com.tp.funding.dao;

import java.util.List;

import com.tp.funding.dto.Notification;

public interface NotificationDao {
	public int notificationWrite(Notification notification);
	public int notificationRead(int notificationNumber);
	public List<Notification> notificationUnReadUserList(String userId);
	public List<Notification> notificationReadUserList(String userId);
	public List<Notification> notificationUnReadCompanyList(String companyId);
	public List<Notification> notificationReadCompanyList(String CompanyId);
	public int eventRaffleUserSend(Notification notification);
	public int companyFundraisingSuccessSend(Notification notification);
	public int usersFundraizingFailureSend(Notification notification);
}
