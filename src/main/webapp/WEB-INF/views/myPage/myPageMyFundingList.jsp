<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FUNDING VIEW CORE INFOMATION</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<!-- 현재 날짜 -->
   <jsp:useBean id="today" class="java.util.Date" />
   <fmt:parseNumber value="${today.time / (1000*60*60*24)}" integerOnly="true" var="nowDate" />

	<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="myPageWrap">
	<section class="myPagePick">
		<h1>My Funding</h1>
		
		<c:forEach var="userFundingAndGoodsInfoList" items="${userFundingAndGoodsInfoList}">
			<div class="goods">
				<ul>
					<li class="thumnail">
						<a href='goodsViewCoreInfomation.do?fundingCode=${userFundingAndGoodsInfoList.fundingCode}'><img src="${conPath}/images/goods/${userFundingAndGoodsInfoList.fundingThumbnailImage}"></a>
					</li>					
					<li class="goodsName">${userFundingAndGoodsInfoList.fundingName}</li>
					<li class="FundingTargetRate">${userFundingAndGoodsInfoList.fundingTargetRate}% 달성</li>
					
					<fmt:parseNumber value="${userFundingAndGoodsInfoList.fundingTargetDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate" />
					
					<c:if test="${nowDate < endDate}">
						<li class="deadline">마감일 ${endDate-nowDate}일 전</li>
					</c:if>
					
					<c:if test="${endDate < nowDate}">
						<li class="deadline">마감일 ${nowDate-endDate}일 지남</li>
					</c:if>					
				</ul>
			</div>	
		</c:forEach>
		
		<div class="paging">
				<c:if test="${paging.startPage>paging.blockSize}">
					<a href="${conPath }/userFundingList.do?pageNum=${paging.startPage-1}" class="PREV">PREV</a>
				</c:if>
				<c:forEach var="i" begin="${paging.startPage }"	end="${paging.endPage}">
					<c:if test="${paging.currentPage==i }">
						<a href="#none" class="current">${i}</a>  
					</c:if>
					<c:if test="${paging.currentPage!=i }">
						 <a href="${conPath}/userFundingList.do?pageNum=${i}">${i}</a> 
					</c:if>
				</c:forEach>
				<c:if test="${paging.endPage<paging.pageCnt }">
					<a href="${conPath }/userFundingList.do?pageNum=${paging.endPage+1}" class="NEXT">NEXT</a>
				</c:if>
			</div>
				
	</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>