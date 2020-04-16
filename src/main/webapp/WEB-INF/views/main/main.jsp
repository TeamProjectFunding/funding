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
</head>
<body>
<c:if test="${not empty errorMessage}">
	<script>
		alert('${errorMessage}');
		history.back();
	</script>
</c:if>


<jsp:include page="header.jsp" />
	<section id="mainVisual">
		<h1>CROWD FUND</h1>
	</section>
	<div id="contentWrap" class="mainWrap">
		
		<section class="goodsWrap">
			<div class="goodsListWrap fund">
				<h1>FUND</h1>
				<div class="goods">
					<ul>
						<li class="thumnail">
							<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_01.jpeg "><span>FUND</span></a>
						</li>
						<li class="companyName">company name</li>
						<li class="goodsName">goods name</li>
						<li class="deadline">deadline after 10 days</li>
					</ul>
				</div>
				<div class="goods">
					<ul>
						<li class="thumnail">
							<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_02.jpeg "><span>FUND</span></a>
						</li>
						<li class="companyName">company name</li>
						<li class="goodsName">goods name</li>
						<li class="deadline">deadline after 10 days</li>
					</ul>
				</div>
				<div class="goods">
					<ul>
						<li class="thumnail">
							<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_03.jpeg "><span>FUND</span></a>
						</li>
						<li class="companyName">company name</li>
						<li class="goodsName">goods name</li>
						<li class="deadline">deadline after 10 days</li>
					</ul>
				</div>
				<div id="buttonWrap">
					<a href='fundList.do' class='button'>MORE +</a>
				</div>
			</div>
			<div class="goodsListWrap reward">
				<h1>REWARD</h1>
				<div class="goods">
					<ul>
						<li class="thumnail">
							<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_04.jpeg "><span>REWARD</span></a>
						</li>
						<li class="companyName">company name</li>
						<li class="goodsName">goods name</li>
						<li class="deadline">deadline after 10 days</li>
					</ul>
				</div>
				<div class="goods">
					<ul>
						<li class="thumnail">
							<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_03.jpeg "><span>REWARD</span></a>
						</li>
						<li class="companyName">company name</li>
						<li class="goodsName">goods name</li>
						<li class="deadline">deadline after 10 days</li>
					</ul>
				</div>
				<div class="goods">
					<ul>
						<li class="thumnail">
							<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_02.jpeg "><span>REWARD</span></a>
						</li>
						<li class="companyName">company name</li>
						<li class="goodsName">goods name</li>
						<li class="deadline">deadline after 10 days</li>
					</ul>
				</div>
				<div id="buttonWrap">
					<a href='rewardList.do' class='button'>MORE +</a>
				</div>
			</div>
		</section>
		<section class="bannerWrap">
			<div class="lineBannerWrap">
				<h1>OPEN FUNDING</h1>
				<h4>Introduce your story and meet investors and supporters</h4>
				<div id="buttonWrap">
					<a href="#none" class="button">Do it</a>
				</div>
			</div>
			<ul class="bannerList">
				<li class="event banner">
					<h1>EVENT</h1>
				</li>
				<li class="memberShip banner">
					<h1>MEMBERS</h1>
				</li>
				
				<li class="noticeList">
					<h3>NOTICE</h3>
					<ul>
						<li>noticeTitle<span>2020-04-12</span></li>
						<li>noticeTitle<span>2020-04-12</span></li>
						<li>noticeTitle<span>2020-04-12</span></li>
						<li>noticeTitle<span>2020-04-12</span></li>
						<li>noticeTitle<span>2020-04-12</span></li>
						<li>noticeTitle<span>2020-04-12</span></li>
						<li>noticeTitle<span>2020-04-12</span></li>
						<li>noticeTitle<span>2020-04-12</span></li>
						<li>noticeTitle<span>2020-04-12</span></li>
					</ul>
					<div id="buttonWrap">
						<a href="#none" class="button">MORE +</a>
					</div>
				</li>
			</ul>
		</section>
	</div>
<jsp:include page="footer.jsp" />