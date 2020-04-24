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
<!-- 현재 날짜 -->
   <jsp:useBean id="today" class="java.util.Date" />
   <fmt:parseNumber value="${today.time / (1000*60*60*24)}" integerOnly="true" var="nowDate" />


<c:if test="${not empty adminApplyMsg}">
	<script>
		alert('${adminApplyMsg}');
	</script>
</c:if>

<c:if test="${not empty adminRejectMsg}">
	<script>
		alert('${adminRejectMsg}');
	</script>
</c:if>

<c:if test="${not empty qnaReplyresult }">
	<script>
		alert('${qnaReplyresult}');
	</script>
</c:if>

<c:if test="${result eq '실패' }">
	<script>
		alert('ID와 비밀번호를 확인하세요');
		history.back();
	</script>
</c:if>
	
	<jsp:include page="../admin/adminMenu.jsp" />
	<div id="contentWrap" class="adminMainWrap">
		<div id="dashBoardWrap">
			<div class="dashBoard">
				<h3>투자신청내역</h3>				
					<div class="dashBoardList">
						<c:forEach var="fundingReadyList" items="${fundingReadyList}">						
							<ul>
								<li><a href="${conPath}/adminApplyView.do?fundingCode=${fundingReadyList.fundingCode}">${fundingReadyList.fundingName}</a><span>${fundingReadyList.fundingTargetDate}</span></li>
								<li id="buttonWrap">
									<a href="${conPath}/adminApply.do?fundingCode=${fundingReadyList.fundingCode}&companyId=${fundingReadyList.companyId}&adminId=admin" class="button">승인</a>
									<a href="${conPath }/adminReject.do?fundingCode=${fundingReadyList.fundingCode}&companyId=${fundingReadyList.companyId}&adminId=admin" class="button">반려</a>
								</li>
							</ul>	
						</c:forEach>										
					</div>				
			</div>
			
			<div class="dashBoard">
				<h3>투자마감</h3>
				<div class="dashBoardList">
				<c:forEach var="fundingDeadlineList" items="${fundingDeadlineList}">
					<fmt:parseNumber value="${fundingDeadlineList.fundingTargetDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate" />
				
					<ul>
						<li><a href="${conPath }/goodsViewCoreInfomation.do">${fundingDeadlineList.fundingName}</a>
						<c:if test="${endDate < nowDate }">
							<span>${nowDate-endDate}일 지남</span>
						</c:if>
						<c:if test="${nowDate < endDate}">
							<span>${endDate-nowDate}일 남음</span>
						</c:if>
						<c:if test="${nowDate == endDate}">
							<span>마감일</span>
						</c:if>
						</li>
						
						<li id="buttonWrap">
							<a href="${conPath}/adminFundingClose.do?fundingCode=${fundingDeadlineList.fundingCode}" class="button">마감</a>
						</li>
					</ul>
					
					</c:forEach>					
				</div>
			</div>
			<div class="dashBoard">
				<h3>상품문의</h3>
				<div class="dashBoardList">
					<ul>
						<li><a href="${conPath }/goodsQnaView.do">[goodsTitle] goodsQ&ATitle </a><span>wirterName 2020.04.14</span></li>
						<li id="buttonWrap">
							<a href="${conPath }/adminGoddsQnaReplyForm.do" class="button">답변</a>
						</li>
					</ul>
					<ul>
						<li><a href="${conPath }/goodsQnaView.do">[goodsTitle] goodsQ&ATitle </a><span>wirterName 2020.04.14</span></li>
						<li id="buttonWrap">
							<a href="${conPath }/adminGoddsQnaReplyForm.do" class="button">답변</a>
						</li>
					</ul>
					<ul>
						<li><a href="${conPath }/goodsQnaView.do">[goodsTitle] goodsQ&ATitle </a><span>wirterName 2020.04.14</span></li>
						<li id="buttonWrap">
							<a href="${conPath }/adminGoddsQnaReplyForm.do" class="button">답변</a>
						</li>
					</ul>
					<ul>
						<li><a href="${conPath }/goodsQnaView.do">[goodsTitle] goodsQ&ATitle </a><span>wirterName 2020.04.14</span></li>
						<li id="buttonWrap">
							<a href="${conPath }/adminGoddsQnaReplyForm.do" class="button">답변</a>
						</li>
					</ul>
					<ul>
						<li><a href="${conPath }/goodsQnaView.do">[goodsTitle] goodsQ&ATitle </a><span>wirterName 2020.04.14</span></li>
						<li id="buttonWrap">
							<a href="${conPath }/adminGoddsQnaReplyForm.do" class="button">답변</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="dashBoard">
				<h3>Q&A</h3>
				<div class="dashBoardList">
				<c:forEach var="qna" items="${qnAAdminList}">
					<ul>
						<li><a href="${conPath}/adminQnaView.do?qnANumber=${qna.qnANumber}">${qna.qnATitle }</a><span>${qna.userId }${qna.companyId}${qna.qnADate}</span></li>
						<li id="buttonWrap">
							<a href="${conPath}/adminQnaReplyForm.do?qnANumber=${qna.qnANumber}" class="button">답변</a>
						</li>
					</ul>
				</c:forEach>
				</div>
			</div>
			<div class="dashBoard">
				<h3>이벤트</h3>
				<div class="dashBoardList">
				<c:forEach var="event" items="${eventAllList}">
					<ul>
						<li><a href="${conPath }/eventView.do">${event.eventTilte}</a><span>${event.eventStartDate}</span></li>
						<li id="buttonWrap">
							<a href="${conPath }/eventClose.do?eventNumber=${event.eventNumber}" class="button">마감</a>
							<a href="${conPath }/eventParticipants.do" class="button">참여자</a>
						</li>
					</ul>
				</c:forEach>
				</div>
			</div>
			<div class="dashBoard">
				<h3>공지</h3>
				<div class="dashBoardList">
				<c:forEach var="notice" items="${noticeList}">
					<ul>
						<li><a href="${conPath }/noticeView.do">${notice.noticeTilte}</a><span>${notice.noticeDate}</span></li>
						<li id="buttonWrap">
							<a href="${conPath }/noticeAdminModifyForm.do?noticeNumber=${notice.noticeNumber}" class="button">수정</a>
							<a href="${conPath }/noticeAdminDelete.do?noticeNumber=${notice.noticeNumber}" class="button">삭제</a>
						</li>
					</ul>
				</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
</html>