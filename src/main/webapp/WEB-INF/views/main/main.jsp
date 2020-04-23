<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CROWDFUND : MAIN</title>
<script>
	function noCompany(){
		alert('펀딩 신청은 회사 로그인 이후에 가능합니다.');
	}
</script>
</head>
<body>

<c:if test="${not empty errorMessage}">
	<script>
		alert('${errorMessage}');
		history.back();
	</script>
</c:if>

<c:if test="${not empty logoutResult }">
	<script>
		alert('${logoutResult}');
	</script>
</c:if>

<!-- 현재 날짜 -->
	<jsp:useBean id="today" class="java.util.Date" />
	<fmt:parseNumber value="${today.time / (1000*60*60*24)}"
		integerOnly="true" var="nowDate" />

<jsp:include page="header.jsp" />
	<section id="mainVisual">
		<h1>CROWD FUND</h1>
	</section>
	<div id="contentWrap" class="mainWrap">
		
		<section class="goodsWrap">
			<div class="goodsListWrap fund">
				<h1>FUND</h1>
				<c:forEach var="fund" items="#{investmentTop3}" begin="0" end="2">
					<div class="goods">
						<ul>
							<li class="thumnail">
								<a href='${conPath }/goodsViewCoreInfomation.do?fundingCode=${fund.fundingCode }'><img src="${conPath}/images/goods/${fund.fundingThumbnailImage}"><span>FUND</span></a>
							</li>
							<li class="companyName">${fund.companyName }</li>
							<li class="goodsName">${fund.fundingName }</li>
							<!-- endDate 설정 -->
							<fmt:parseNumber
							value="${fund.fundingTargetDate.time / (1000*60*60*24)}"
							integerOnly="true" var="endDate" />
							<li class="deadline">deadline after ${endDate-nowDate } days</li>
						</ul>
					</div>
				</c:forEach>
			
				<div id="buttonWrap">
					<a href='fundList.do?category=fund' class='button'>MORE +</a>
				</div>
			</div>
			<div class="goodsListWrap reward">
				<h1>REWARD</h1>
				<c:forEach var="fund" items="#{rewardTop3}" begin="0" end="2">
					<div class="goods">
						<ul>
							<li class="thumnail">
								<a href='${conPath }/goodsViewCoreInfomation.do?fundingCode=${fund.fundingCode }'><img src="${conPath}/images/goods/${fund.fundingThumbnailImage}">
								<span>REWARD</span></a>
							</li>
							<li class="companyName">${fund.companyName }</li>
							<li class="goodsName">${fund.fundingName }</li>
							<!-- endDate 설정 -->
							<fmt:parseNumber
							value="${fund.fundingTargetDate.time / (1000*60*60*24)}"
							integerOnly="true" var="endDate" />
							<li class="deadline">deadline after ${endDate-nowDate } days</li>
						</ul>
					</div>
				</c:forEach>
				<div id="buttonWrap">
					<a href='fundList.do?category=reward' class='button'>MORE +</a>
				</div>
			</div>
		</section>
		<section class="bannerWrap">
			<div class="lineBannerWrap">
				<h1>OPEN FUNDING</h1>
				<h4>Introduce your story and meet investors and supporters</h4>
				<div id="buttonWrap">
					<c:if test="${not empty sessionScope.company }">
					<a href="fundingApplyForm.do" class="button">Do it</a>
					</c:if>
					<c:if test="${empty sessionScope.company }">
					<a href="#none" class="button" onclick="noCompany()">Do it</a>
					</c:if>
				</div>
			</div>
			<ul class="bannerList">
				<li class="event banner" onClick="location.href='${conPath}/eventList.do'">
					<h1>EVENT</h1>
				</li>
				<li class="memberShip banner" onClick="location.href='${conPath}/join.do'">
					<h1><a href="join.do">MEMBERS</a></h1>
				</li>
				
				<li class="noticeList">
					<h3>NOTICE</h3>
					<ul>
						<c:forEach var="notice" items="${noticeList }" begin="0" end="9">
						<li onclick="location.href='${conPath}/noticeView.do?noticeNumber=${notice.noticeNumber}">
						${notice.noticeTilte}
						<span><fmt:formatDate value="${notice.noticeDate }" pattern="yyyy-MM-dd"/></span>
						</li>
						</c:forEach>
					</ul>
					<div id="buttonWrap">
						<a href="noticeList.do" class="button">MORE +</a>
					</div>
				</li>
			</ul>
		</section>
	</div>
<jsp:include page="footer.jsp" />