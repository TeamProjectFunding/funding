<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&
	family=Oswald:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
	<jsp:include page="../adminMenu.jsp"/>
	<div id="contentWrap" class="adminMainWrap">
		<section id="userViewWrap">
			<h1>USERS INFOMATION</h1>
			 <table>
				<tr>
					<th><img src="${conPath}/images/Profile/${user.userProfileImage}" alt="userProfie"></th>
					<td><span>${user.userGradeName}</span> ${user.userName}</td>
				</tr>
				<tr>
					<th>ID :</th>
					<td>${user.userId}</td>
				</tr>
				<tr>
					<th>PHONE :</th>
					<td>${user.userPhone}</td>
				</tr>
				<tr>
					<th>ADDRESS :</th>
					<td>${user.userAddressBasic}&nbsp;${user.userAddressDetail} </td>
				</tr>
				<tr>
					<th>BIRTH DAY :</th>
					<td>${user.userBirthday} </td>
				</tr>
				<tr>
					<th>BANK :</th>
					<td>${user.userBankName}</td>
				</tr>
				<tr>
					<th>ACCOUNT NUMBER :</th>
					<td>${user.userAccountNumber}</td>
				</tr>
				<tr>
					<th>ADVERTISING RECEIVED :</th>
					<td><c:if test="${user.userAdPhone eq 1}"> 
							 전화광고 동의
							</c:if>  
							<c:if test="${user.userAdPhone eq 0}"> 
							 전화광고 비동의
							</c:if>,
							<c:if test="${user.userAdEmail eq 1}"> 
							 이메일수신 동의
							</c:if>  
							<c:if test="${user.userAdEmail eq 0}"> 
							 이메일수신 비동의
							</c:if>
						</td>
				</tr>
				<tr>
					<th colspan="2" id="buttomWrap">
						<input type="button" class="button" value="DELETE" onclick="location.href='${conPath}/adminUserOutSite.do?userId=${user.userId}'">
					</th>
				</tr>
			</table>
		</section>
	</div>
</body>
</html>