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
   
	<jsp:include page="../adminMenu.jsp"/>
	<div id="contentWrap" class="adminMainWrap">
		<section id="GoodsWrap">
			<h1>APPLY LIST</h1>
			<c:forEach var="fundingReadyList" items="${fundingReadyList}">					
				<div class="goods">
					<ul>
						<li class="thumnail">
							<a href="${conPath}/adminApplyView.do?fundingCode=${fundingReadyList.fundingCode}"><img src="${conPath}/images/fundingProduct_01.jpeg"><span>FUND</span></a>
						</li>
						<li class="companyName">${fundingReadyList.companyName}</li>
						<li class="goodsName">${fundingReadyList.fundingName}</li>
						<fmt:parseNumber value="${fundingReadyList.fundingTargetDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate" />
						<li class="deadline">${endDate - nowDate}일 남았지롱</li>
					</ul>
				</div>
			</c:forEach>				
			
			<div class="paging">
				<c:if test="${paging.startPage>paging.blockSize }">
					<a href="${conPath }/adminApplyList.do?pageNum=${paging.startPage-1 }" class="PREV">PREV</a>
				</c:if>
				<c:forEach var="i" begin="${paging.startPage }"	end="${paging.endPage}">
					<c:if test="${paging.currentPage==i }">
						<a href="#none" class="current">${i }</a>  
					</c:if>
					<c:if test="${paging.currentPage!=i }">
						<a href="${conPath }/adminApplyList.do?pageNum=${i}"> ${i}</a>
					</c:if>
				</c:forEach>
				<c:if test="${paging.endPage<paging.pageCnt }">
					<a href="${conPath }/adminApplyList.do?pageNum=${paging.endPage+1 }" class="NEXT">NEXT</a>
				</c:if>
			</div>
			
		</section>
	</div>
</body>
</html>