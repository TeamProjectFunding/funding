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
		<h1>테스트용 id</h1>
			<h1>알림</h1>
			<h4>모든알림 ${user.notificationCount}</h4>
			<div class="alarmListWrap">
				<c:if test="${not empty user && empty company}">
					<c:forEach var="notification" items="${notificationUnReadUserList}">
						<ul >
							<li class="alarmContent">${notification.notificationContent}</li>
							<li class="date">${notification.notificationDate}</li>
						</ul>
					</c:forEach>
				</c:if>
				
			<h4>모든알림 ${company.notificationCount}</h4>
			<div class="alarmListWrap">
				<c:if test="${not empty companyId && empty userId}">
					<c:forEach var="notification" items="${notificationUnReadCompanyList}">
						<ul >
							<li class="alarmContent">${notification.notificationContent}</li>
							<li class="date">${notification.notificationDate}</li>
						</ul>
					</c:forEach>
				</c:if>
			</div>
		</div>
	</div>
	</div>
</body>
</html>