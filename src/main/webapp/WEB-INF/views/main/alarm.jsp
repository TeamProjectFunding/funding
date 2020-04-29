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
			function readNotification(notificationNumber){
				var userId = '${user.userId}';
				var companyId = '${company.companyId}';
				var notificationHtml = $('#notificationCount').html();
				var notificationCount = Number(notificationHtml.charAt(notificationHtml.length-1));
				$.ajax({
		                url : '${conPath}/readNotification.do',
		                datatype : 'html',
		                data : "notificationNumber="+notificationNumber+"&userId="+userId+"&companyId="+companyId,
		                success : function(data, status){
		                   $('#notificationCount').html('모든알림 : '+(notificationCount-1));
		                }
		        });
			}
			$(function(){
				$('.closeButton').click(function(){
					$('.popupWrap').slideUp();
				});
			
				$('.alarmList').click(function(){
					$(this).addClass('read');
				});
			});
		</script>
		<div id="contentWrap">
		<h1>${user.userId}${company.companyId}</h1>
			<h1>알림</h1>
			<h4 id="notificationCount">모든알림 : ${user.notificationCount }${company.notificationCount }</h4>
			<c:if test="${not empty user && empty company}">
				<div class="alarmListWrap">
					
					<c:forEach var="notification" items="${notificationUnReadUserList}">
						<ul class="alarmList">
							<li class="alarmContent">${notification.notificationContent}</li>
							<li class="date">${notification.notificationDate}<a href="#none" class="readButton" onclick="readNotification('${notification.notificationNumber}');">읽음</a></li>
						</ul>
					</c:forEach>	
								
				</div>
			</c:if>	
			
			<%-- <h4>모든알림 ${company.notificationCount}</h4> --%>
			<c:if test="${not empty company && empty user}">
				<div class="alarmListWrap">
					<c:forEach var="notification" items="${notificationUnReadCompanyList}">
						<ul class="alarmList">
							<li class="alarmContent">${notification.notificationContent}</li>
							<li class="date">${notification.notificationDate}<a href="#none" class="readButton" onclick="readNotification('${notification.notificationNumber}');">읽음</a></li>
						</ul>
					</c:forEach>
				</div>
			</c:if>			
		</div>
	</div>
	
</body>
</html>