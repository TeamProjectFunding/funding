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
	
	<jsp:include page="../admin/adminMenu.jsp" />
	<div id="contentWrap" class="adminMainWrap">
		<div id="dashBoardWrap">
			<div class="dashBoard">
				<h3>투자신청내역</h3>
				<div class="dashBoardList">
					<ul>
						<li><a href="${conPath}/adminApplyView.do">goodsTitle</a><span>2020.04.14</span></li>
						<li id="buttonWrap">
							<a href="${conPath}/adminApply.do" class="button">승인</a>
							<a href="${conPath }/adminReject.do" class="button">반려</a>
						</li>
					</ul>
					<ul>
						<li><a href="${conPath}/adminApplyView.do">goodsTitle</a><span>2020.04.14</span></li>
						<li id="buttonWrap">
							<a href="${conPath}/adminApply.do" class="button">승인</a>
							<a href="${conPath }/adminReject.do" class="button">반려</a>
						</li>
					</ul>
					<ul>
						<li><a href="${conPath}/adminApplyView.do">goodsTitle</a><span>2020.04.14</span></li>
						<li id="buttonWrap">
							<a href="${conPath}/adminApply.do" class="button">승인</a>
							<a href="${conPath }/adminReject.do" class="button">반려</a>
						</li>
					</ul>
					<ul>
						<li><a href="${conPath}/adminApplyView.do">goodsTitle</a><span>2020.04.14</span></li>
						<li id="buttonWrap">
							<a href="${conPath}/adminApply.do" class="button">승인</a>
							<a href="${conPath }/adminReject.do" class="button">반려</a>
						</li>
					</ul>
					<ul>
						<li><a href="${conPath}/adminApplyView.do">goodsTitle</a><span>2020.04.14</span></li>
						<li id="buttonWrap">
							<a href="${conPath}/adminApply.do" class="button">승인</a>
							<a href="${conPath }/adminReject.do" class="button">반려</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="dashBoard">
				<h3>투자마감</h3>
				<div class="dashBoardList">
					<ul>
						<li><a href="${conPath }/goodsViewCoreInfomation.do">goodsTitle</a><span>3일 남음</span></li>
						<li id="buttonWrap">
							<a href="${conPath }/adminFundingClose.do" class="button">마감</a>
						</li>
					</ul>
					<ul>
						<li><a href="${conPath }/goodsViewCoreInfomation.do">goodsTitle</a><span>3일 남음</span></li>
						<li id="buttonWrap">
							<a href="${conPath }/adminFundingClose.do" class="button">마감</a>
						</li>
					</ul>
					<ul>
						<li><a href="${conPath }/goodsViewCoreInfomation.do">goodsTitle</a><span>3일 남음</span></li>
						<li id="buttonWrap">
							<a href="${conPath }/adminFundingClose.do" class="button">마감</a>
						</li>
					</ul>
					<ul>
						<li><a href="${conPath }/goodsViewCoreInfomation.do">goodsTitle</a><span>3일 남음</span></li>
						<li id="buttonWrap">
							<a href="${conPath }/adminFundingClose.do" class="button">마감</a>
						</li>
					</ul>
					<ul>
						<li><a href="${conPath }/goodsViewCoreInfomation.do">goodsTitle</a><span>3일 남음</span></li>
						<li id="buttonWrap">
							<a href="${conPath }/adminFundingClose.do" class="button">마감</a>
						</li>
					</ul>
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
						<li><a href="#none">${qna.qnATitle }</a><span>${qna.userId }${qna.companyId} ${qna.qnADate}</span></li>
						<li id="buttonWrap">
							<a href="#none" class="button">답변</a>
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
							<a href="${conPath }/eventClose.do" class="button">마감</a>
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
							<a href="${conPath }/noticeModify.do?${notice.noticeNumber}" class="button">수정</a>
							<a href="${conPath }/noticeDelete.do" class="button">삭제</a>
						</li>
					</ul>
				</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
</html>