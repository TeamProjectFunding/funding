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
<link href="${conPath}/css/style.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="myPageWrap">
	<section class="myPageMainWrap" >
		<h1>MYPAGE</h1>
		
		<div class="myPageProfile">
		
			<c:if test="${not empty sessionScope.user.userProfileImage || not empty sessionScope.company.companyProfileImage}">
				<img src="${conPath}/images/profile/${user.userProfileImage}${company.companyProfileImage}" alt="profile" >
			</c:if>							
							
			<c:if test="${sessionScope.user.userProfileImage eq null && sessionScope.company.companyProfileImage eq null}">
				<i class="material-icons">account_circle</i>
			</c:if>				
			
		</div>
		
		<table>
			<tr>
				<td>${userDetail.userName}${companyDetail.companyName}</td>
			</tr>
			<tr>
				<td>${userDetail.userPhone}${companyDetail.companyPhone}</td>
			</tr>
			<tr>
				<td>${userDetail.userId}${companyDetail.companyId}</td>
			</tr>
			<tr>
				<td id="buttonWrap">
					<a href="" class="button">계좌등록</a>
					<a href="" class="button">프로필수정</a>
				</td>
			</tr>
		</table>
		<!-- table class="userActivity">
			<tr>
				<th>FUNDING</th>
				<th>PICK</th>
				<th>POST</th>
				<th>EVENT</th>
			</tr>
			<tr>
				<td><a href="">0</a></td>
				<td><a href="">0</a></td>
				<td><a href="">0</a></td>
				<td><a href="">0</a></td>
			</tr>
		</table -->
		
		<table class="companyActivity">
			<tr>
				<th>GOODS</th>
				<th>APPLY</th>
			</tr>
			<tr>
				<td><a href="">0</a></td>
				<td><a href="">0</a></td>
			</tr>
		</table>
	</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>