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
			<h3>새소식</h3>
			<div class="newsListWrap">
				<c:forEach var="news" items="${newsList }">
					<ul class="newsList">
						<li class="newsTitle"><a href="goodsNewsView.do">${news.fundingNewsTitle }</a></li>
						<li>${good.fundingName } <span><fmt:formatDate value="${news.fundingNewsDate }" pattern="yyyy.MM.dd"/> </span></li>
					</ul>
				</c:forEach>
			</div>
			<div class="paging">
				<c:if test="${paging.startPage>paging.blockSize }">
				<a href="#none" onclick="goodsViewRiskPage('${paging.startPage-1 }');" class="prev">PREV</a>
				</c:if>
				<c:forEach var="i" begin="${paging.startPage }"	end="${paging.endPage }">
					<c:if test="${paging.currentPage==i }">
						<a href="#none" class="current">${i }</a>  
					</c:if>
					<c:if test="${paging.currentPage!=i }">
						<a href="#none" onclick="goodsViewRiskPage('${i }');" > ${i }</a>
					</c:if>
				</c:forEach>
				<c:if test="${paging.endPage<paging.pageCnt }">
				<a href="#none" onclick="goodsViewRiskPage('${paging.endPage+1 }');"  class="next">NEXT</a>
				</c:if>
			</div>
</body>
</html>