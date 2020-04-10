package com.tp.funding.dto;

import java.sql.Date;

public class UserPick {

	private int userPickNumber;     
	private String userId;     
	private int fundingCode;
	
	//join해서 출력 찜중 날짜 지난건 바로 삭제
	private String fundingName;
	private String fundingCategory;
	private Date fundingTargetDate;
	private String fundingThumbnailImage;
	
}
