package com.tp.funding.dto;

import java.sql.Date;

public class Users {
	private String userId;              
	private String userPassword ;       
	private String userProfileImage;      
	private String userName;              
	private String userPhone;             
	private String userAddressBasic;     
	private String userAddressDetail;   
	private String userBankName;         
	private String userAccountNumber;    
	private int userAccountBalance;     
	private Date userBirthday;                
	private Date userJoinDate;                   
	private int userAdPhone;             
	private int userAdEmail;             
	private int userInvestmentAmount; 
	private int userInterestAmount;     
	private int userOutSite;             
	private int userGradeNo;
	
	//paging
		private int startRow;
		private int endRow;
	
	// join해서 쓸 것
	private int notificationCount; //알림갯수
	private int userPickCount; //찜갯수
	private String userGradeName;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserProfileImage() {
		return userProfileImage;
	}
	public void setUserProfileImage(String userProfileImage) {
		this.userProfileImage = userProfileImage;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserAddressBasic() {
		return userAddressBasic;
	}
	public void setUserAddressBasic(String userAddressBasic) {
		this.userAddressBasic = userAddressBasic;
	}
	public String getUserAddressDetail() {
		return userAddressDetail;
	}
	public void setUserAddressDetail(String userAddressDetail) {
		this.userAddressDetail = userAddressDetail;
	}
	public String getUserBankName() {
		return userBankName;
	}
	public void setUserBankName(String userBankName) {
		this.userBankName = userBankName;
	}
	public String getUserAccountNumber() {
		return userAccountNumber;
	}
	public void setUserAccountNumber(String userAccountNumber) {
		this.userAccountNumber = userAccountNumber;
	}
	public int getUserAccountBalance() {
		return userAccountBalance;
	}
	public void setUserAccountBalance(int userAccountBalance) {
		this.userAccountBalance = userAccountBalance;
	}
	public Date getUserBirthday() {
		return userBirthday;
	}
	public void setUserBirthday(Date userBirthday) {
		this.userBirthday = userBirthday;
	}
	public Date getUserJoinDate() {
		return userJoinDate;
	}
	public void setUserJoinDate(Date userJoinDate) {
		this.userJoinDate = userJoinDate;
	}
	public int getUserAdPhone() {
		return userAdPhone;
	}
	public void setUserAdPhone(int userAdPhone) {
		this.userAdPhone = userAdPhone;
	}
	public int getUserAdEmail() {
		return userAdEmail;
	}
	public void setUserAdEmail(int userAdEmail) {
		this.userAdEmail = userAdEmail;
	}
	public int getUserInvestmentAmount() {
		return userInvestmentAmount;
	}
	public void setUserInvestmentAmount(int userInvestmentAmount) {
		this.userInvestmentAmount = userInvestmentAmount;
	}
	public int getUserInterestAmount() {
		return userInterestAmount;
	}
	public void setUserInterestAmount(int userInterestAmount) {
		this.userInterestAmount = userInterestAmount;
	}
	public int getUserOutSite() {
		return userOutSite;
	}
	public void setUserOutSite(int userOutSite) {
		this.userOutSite = userOutSite;
	}
	public int getUserGradeNo() {
		return userGradeNo;
	}
	public void setUserGradeNo(int userGradeNo) {
		this.userGradeNo = userGradeNo;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}
	public int getNotificationCount() {
		return notificationCount;
	}
	public void setNotificationCount(int notificationCount) {
		this.notificationCount = notificationCount;
	}
	public int getUserPickCount() {
		return userPickCount;
	}
	public void setUserPickCount(int userPickCount) {
		this.userPickCount = userPickCount;
	}
	public String getUserGradeName() {
		return userGradeName;
	}
	public void setUserGradeName(String userGradeName) {
		this.userGradeName = userGradeName;
	}
	public Users() {
		super();
	}
	public Users(String userId, String userPassword, String userProfileImage, String userName, String userPhone,
			String userAddressBasic, String userAddressDetail, String userBankName, String userAccountNumber,
			int userAccountBalance, Date userBirthday, Date userJoinDate, int userAdPhone, int userAdEmail,
			int userInvestmentAmount, int userInterestAmount, int userOutSite, int userGradeNo, int startRow,
			int endRow, int notificationCount, int userPickCount, String userGradeName) {
		super();
		this.userId = userId;
		this.userPassword = userPassword;
		this.userProfileImage = userProfileImage;
		this.userName = userName;
		this.userPhone = userPhone;
		this.userAddressBasic = userAddressBasic;
		this.userAddressDetail = userAddressDetail;
		this.userBankName = userBankName;
		this.userAccountNumber = userAccountNumber;
		this.userAccountBalance = userAccountBalance;
		this.userBirthday = userBirthday;
		this.userJoinDate = userJoinDate;
		this.userAdPhone = userAdPhone;
		this.userAdEmail = userAdEmail;
		this.userInvestmentAmount = userInvestmentAmount;
		this.userInterestAmount = userInterestAmount;
		this.userOutSite = userOutSite;
		this.userGradeNo = userGradeNo;
		this.startRow = startRow;
		this.endRow = endRow;
		this.notificationCount = notificationCount;
		this.userPickCount = userPickCount;
		this.userGradeName = userGradeName;
	}
	@Override
	public String toString() {
		return "Users [userId=" + userId + ", userPassword=" + userPassword + ", userProfileImage=" + userProfileImage
				+ ", userName=" + userName + ", userPhone=" + userPhone + ", userAddressBasic=" + userAddressBasic
				+ ", userAddressDetail=" + userAddressDetail + ", userBankName=" + userBankName + ", userAccountNumber="
				+ userAccountNumber + ", userAccountBalance=" + userAccountBalance + ", userBirthday=" + userBirthday
				+ ", userJoinDate=" + userJoinDate + ", userAdPhone=" + userAdPhone + ", userAdEmail=" + userAdEmail
				+ ", userInvestmentAmount=" + userInvestmentAmount + ", userInterestAmount=" + userInterestAmount
				+ ", userOutSite=" + userOutSite + ", userGradeNo=" + userGradeNo + ", startRow=" + startRow
				+ ", endRow=" + endRow + ", notificationCount=" + notificationCount + ", userPickCount=" + userPickCount
				+ ", userGradeName=" + userGradeName + "]";
	}    
	
	
	
	
}
