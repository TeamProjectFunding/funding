<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FUNDING VIEW CORE INFOMATION</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<h3>현재 이 펀딩에 <span>1명</span>이 참여하였습니다.</h3>
	<c:forEach var="user" items="${doFundingUserList }">
		<img alt="userImage" src="${user.userProfileImage }">
		<p>유저이름 : ${user.userName }</p>
		<p>펀딩날짜 : <fmt:formatDate value="${user.fundingDate }" pattern="yyyy-MM-dd"/></p>
		<p>펀딩금액 : ${user.fundingAmount }</p>
		<c:if test="${user.fundingRewardAddDonation ne 0 }">
		<p>추가후원금 : ${user.fundingRewardAddDonation }</p>
		</c:if>
	</c:forEach>
</body>
</html>