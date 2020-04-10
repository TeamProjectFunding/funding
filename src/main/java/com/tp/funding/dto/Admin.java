package com.tp.funding.dto;

public class Admin {
	
	private String adminId;       
	private String adminPassword; 
	private String adminName;
	public Admin(String adminId, String adminPassword, String adminName) {
		super();
		this.adminId = adminId;
		this.adminPassword = adminPassword;
		this.adminName = adminName;
	}
	public Admin() {
		super();
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminPassword() {
		return adminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", adminPassword=" + adminPassword + ", adminName=" + adminName + "]";
	}  
	
	
}
