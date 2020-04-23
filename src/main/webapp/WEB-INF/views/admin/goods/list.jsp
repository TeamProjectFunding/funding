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
			<h1>GOODS LIST</h1>

			<!-- <form action="">
				<table>
					<tr>
						<th>
							<input type ="text" name="userName" placeholder="상품을 입력하세요.">
							<input type ="submit" value="SEARCH" class="button">
						</th>
					</tr>
				</table>
			</form> -->

		<%-- 	<div class="goods">
				<ul>
					<li class="thumnail">
						<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_01.jpeg "><span>FUND</span></a>
					</li>
					<li class="companyName">company name</li>
					<li class="goodsName">goods name</li>
					<li class="deadline">deadline after 10 days</li>
					<li id="buttonWrap">
						<a href="#none" class="button" onClick="location.href='${conPath}/adminFundingClosex.do?'">마감</a>
						<a href="#none" class="button" onClick="location.href='${conPath}/adminGoodsModify.do'">수정</a>
					</li>
				</ul>
			</div> --%>
			
			<c:forEach var="adminGoodsList" items="${adminGoodsList}">
				<div class="goods">
					<ul>
						<li class="thumnail">
							<a href='goodsViewCoreInfomation.do'><img src="${conPath}/images/fundingProduct_01.jpeg "><span>FUND</span></a>
						</li>
						<li class="companyName">${adminGoodsList.companyName}</li>
						<li class="goodsName">${adminGoodsList.fundingName}</li>
						<fmt:parseNumber value="${adminGoodsList.fundingTargetDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate" />
						<li class="deadline">${endDate - nowDate}일 남았지롱</li>
						<li id="buttonWrap">
							<a href="#none" class="button" onClick="location.href='${conPath}/adminFundingClose.do?fundingCode=${adminGoodsList.fundingCode }'">마감</a>
							<a href="#none" class="button" onClick="location.href='${conPath}/adminGoodsModifyForm.do?fundingCode=${adminGoodsList.fundingCode }'">수정</a>
						</li>
					</ul>
				</div>
			</c:forEach>
			
			<div class="paging">
				<c:if test="${paging.startPage>paging.blockSize }">
					<a href="${conPath }/adminGoodsList.do?pageNum=${paging.startPage-1 }" class="prev">PREV</a>
				</c:if>
				<c:forEach var="i" begin="${paging.startPage }"	end="${paging.endPage}">
					<c:if test="${paging.currentPage==i }">
						<a href="#none" class="current">${i }</a>  
					</c:if>
					<c:if test="${paging.currentPage!=i }">
						<a href="${conPath }/adminGoodsList.do?pageNum=${i}"> ${i }</a>
					</c:if>
				</c:forEach>
				<c:if test="${paging.endPage<paging.pageCnt }">
					<a href="${conPath }/adminGoodsList.do?pageNum=${paging.endPage+1 }" class="next">NEXT</a>
				</c:if>
			</div>
			
		</section>
		
	</div>
</body>
</html>