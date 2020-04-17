<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="${conPath}/css/common.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&
	family=Oswald:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

<header>
	<c:if test="${not empty user.userId}">
		<p id="messageWrap">로그인 되었습니다</p>
	</c:if>
	<c:if test="${not empty company.companyId}">
		<p id="messageWrap">로그인 되었습니다</p>
	</c:if>	
	
	<div id="headerWrap">
		<a href="main.do" class='headerLogo'>CROWD<br>FUND</a>
		<div class='menuWrap'>
			<ul class="util">				
				<li><a href="adminMain.do">ADMIN</a></li>
								
				<c:if test="${empty user && empty company}">
					<li><a href="login.do">LOG-IN</a></li>
					<li><a href="join.do">JOIN</a></li>
				</c:if>				
				
				
				<!-- login 
            <li><a href="mypage.do" class="mypageButton"><img src="" alt="profile"><span>userName</span></a></li>
            <li><a href="login.do">LOG-OUT</a></li>
            -->
				
				<c:if test="${not empty user || not empty company }">
					<li><a href="#" class="mypageButton"><img src="${conPath}/images/profile/${user.userProfileImage}${company.companyProfileImage}" alt="profile"></a></li>
					<li><a href="${conPath}/logout.do">LOG_OUT</a></li>
				</c:if>							
				
				<c:if test="${not empty user && empty company}">
					<li><a href="userAlarmCheck.do?userId=${user.userId}" class="alarmButton">alarm<c:if test="${user.notificationCount >= 1}"><span class="alarm"></span></c:if></a></li>
				</c:if>
				<c:if test="${not empty company && empty user}">
					<li><a href="companyAlarmCheck.do?companyId=${company.companyId}" class="alarmButton">alarm<c:if test="${company.notificationCount >= 1 }"><span class="alarm"></span></c:if></a></li>
				</c:if>
					<li><a href="#none" class="searchButton"><!-- img src="" alt="search" -->search</a></li>
			</ul>
			<script>
				$(function(){
					$('.searchButton').click(function(){
						$('#searchWrap').slideDown();
					});
					$('.mypageButton').click(function(){
						$('#mypagehWrap').slideDown();
					});
					$('.alarmButton').click(function(){
						$('#alarmWrap').slideDown();
					});
					
					$(window).scroll(function(){ 
					    var height = $(document).scrollTop(); //실시간으로 스크롤의 높이를 측정
					    if(height > 200){ 
					      $('header').addClass('scroll'); 
					    }else if(height == 0){ 
					      $('header').removeClass('scroll'); 
					    } 
					  });
				});
			</script>
			<ul class="gnb">
				<li><a href="fundList.do?category=fund">FUND</a></li>
				<li><a href="fundList.do?category=reward">REWARD</a></li>
				<li><a href="eventList.do">EVENT</a></li>
				<li><a href="qnaList.do">Q&A</a></li>
				<li><a href="noticeList.do">NOTICE</a></li>
			</ul>
		</div>
	</div>
	<jsp:include page="alarm.jsp"/>
	<jsp:include page="mypageMenu.jsp"/>	
</header>
<jsp:include page="searchForm.jsp"/>
