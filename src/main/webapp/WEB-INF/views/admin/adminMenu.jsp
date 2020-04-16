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
	<link href="${conPath}/css/admin.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&
	family=Oswald:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
	<aside id="adminMenuWrap">
		<a href="adminMain.do" class='headerLogo'>CROWD<br>FUND</a>
		<ul>
			<li><a href="adminUserList.do">USERS</a></li>
			<li><a href="adminCompanyList.do">COMPANY</a></li>
			<li><a href="adminGoodsList.do">GOODS</a></li>
			<li><a href="adminApplyList.do">Apply</a></li>
			<li><a href="adminEventList.do">EVENT</a></li>
			<li><a href="adminGoodsQnaList.do">GOODS Q&A</a></li>
			<li><a href="adminQnaList.do">Q&A</a></li>
			<li><a href="adminNoticeList.do">NOTICE</a></li>
			<li><a href="main.do">HOMEPAGE</a></li>
		</ul>
	</aside>
</body>
</html>