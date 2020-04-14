<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Users 테스트</h1>
	<button onclick="location.href='${conPath}/userList.do'">userList</button>
	<button onclick="location.href='${conPath}/userSearchList.do'">userSearchList(searchName="이")</button>
	<button onclick="location.href='${conPath}/userJoin.do'">userJoin</button>
	<button onclick="location.href='${conPath}/userLoginCheck.do'">userLoginCheck</button>
	<button onclick="location.href='${conPath}/userDetail.do'">userDetail</button>
	<button onclick="location.href='${conPath}/userInfoModify.do'">userInfoModify</button>
	<button onclick="location.href='${conPath}/userOutSite.do'">userOutSite</button>
	<button onclick="location.href='${conPath}/userAccountModify.do'">userAccountModify</button>
	<button onclick="location.href='${conPath}/userBalanceModify.do'">userBalanceModify</button>
	<button onclick="location.href='${conPath}/userGradeUp.do'">userGradeUp</button>
	<button onclick="location.href='${conPath}/userInvestmentAmountModify.do'">userInvestmentAmountModify</button>
	<button onclick="location.href='${conPath}/userInterestAmountModify.do'">userInterestAmountModify</button>
</body>
</html>