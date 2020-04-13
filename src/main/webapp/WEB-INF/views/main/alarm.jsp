<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="alarmWrap" class="popupWrap">
		<div class="closeButton">
			<span></span>
			<span></span>	
		</div>
		<script>
			$(function(){
				$('.closeButton').click(function(){
					$('.popupWrap').slideUp();
				});
			});
		</script>
		<div id="contentWrap">
			<h1>알림</h1>
			<h4>모든알림 10</h4>
			<div class="alarmListWrap">
				<ul >
					<li class="alarmContent">투자회원 등록 심사가 완료되어 계좌가 발급 되었습니다.</li>
					<li class="date">2020 -04-12 일요일</li>
				</ul>
				<ul >
					<li class="alarmContent">투자회원 등록 심사가 완료되어 계좌가 발급 되었습니다.</li>
					<li class="date">2020 -04-12 일요일</li>
				</ul>
				<ul >
					<li class="alarmContent">투자회원 등록 심사가 완료되어 계좌가 발급 되었습니다.</li>
					<li class="date">2020 -04-12 일요일</li>
				</ul>
				<ul >
					<li class="alarmContent">투자회원 등록 심사가 완료되어 계좌가 발급 되었습니다.</li>
					<li class="date">2020 -04-12 일요일</li>
				</ul>
				<ul >
					<li class="alarmContent">투자회원 등록 심사가 완료되어 계좌가 발급 되었습니다.</li>
					<li class="date">2020 -04-12 일요일</li>
				</ul>
				<ul >
					<li class="alarmContent">투자회원 등록 심사가 완료되어 계좌가 발급 되었습니다.</li>
					<li class="date">2020 -04-12 일요일</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>