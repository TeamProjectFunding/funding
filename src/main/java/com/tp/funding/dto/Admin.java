package com.tp.funding.dto;

public class Admin {
	
	private String adminId;       
	private String adminPassword; 
	private String adminName;
	private String adminProfileImage;
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
	public String getAdminProfileImage() {
		return adminProfileImage;
	}
	public void setAdminProfileImage(String adminProfileImage) {
		this.adminProfileImage = adminProfileImage;
	}
	public Admin(String adminId, String adminPassword, String adminName, String adminProfileImage) {
		super();
		this.adminId = adminId;
		this.adminPassword = adminPassword;
		this.adminName = adminName;
		this.adminProfileImage = adminProfileImage;
	}
	public Admin() {
		super();
	}
	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", adminPassword=" + adminPassword + ", adminName=" + adminName
				+ ", adminProfileImage=" + adminProfileImage + "]";
	}
	
	
	
}
