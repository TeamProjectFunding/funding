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
	<p id="messageWrap">로그인 되었습니다</p>
	<div id="headerWrap">
		<a href="main.do" class='headerLogo'>CROWD<br>FUND</a>
		<div class='menuWrap'>
			<ul class="util">
				<li><a href="adminMain.do">ADMIN</a></li>
				<li><a href="login.do">LOG-IN</a></li>
				<li><a href="join.do">JOIN</a></li>
				
				<!-- login 
				<li><a href="mypage.do" class="mypageButton"><img src="" alt="profile"><span>userName</span></a></li>
				<li><a href="login.do">LOG-OUT</a></li>
				-->
				
				<li><a href="#none" class="alarmButton"><!-- img src="" alt="alarm" -->alarm<span class="alarm"></span></a></li>
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
