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
	<link href="${conPath}/css/common.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&
	family=Oswald:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
	<jsp:include page="../adminMenu.jsp"/>
	<div id="contentWrap" class="adminMainWrap">
		<section id="userListWrap">
			<h1>COMPANY LIST</h1>
			<form action="">
				<table>
					<tr>
						<th>
							<input type ="text" name="userName" placeholder="기업명을 입력하세요.">
							<input type ="submit" value="SEARCH" class="button">
						</th>
					</tr>
				</table>
			</form>
			<table>
				<tr>
					<th>NUMBER</th>
					<th>TITLE</th>
					<th>PRODUCTNAME</th>
					<th>EVENT START</th>
					<th>EVENT END</th>
					<th>HIT</th>
				</tr>
				<c:forEach var="event" items="${eventAdminList}">
				<tr class="userInfo">
					<td>${event.eventNumber}</td>
					<td><a href="${conPath }/adminCompanyView.do">${event.eventTilte}</a></td>
					<td>${event.eventProductName }</td>
					<td>${event.eventStartDate }</td>
					<td>${event.eventEndDate }</td>
					<td>${event.eventHit }</td>
				</tr>
				</c:forEach>
			</table>
					<div class="paging">
				<c:if test="${paging.startPage>paging.blockSize }">
				<a href="${conPath }/adminEventList.do?pageNum=${paging.startPage-1 }" class="prev">PREV</a>
				</c:if>
				<c:forEach var="i" begin="${paging.startPage }"	end="${paging.endPage }">
					<c:if test="${paging.currentPage==i }">
						<a href="#none" class="current">${i }</a>  
					</c:if>
					<c:if test="${paging.currentPage!=i }">
						<a href="${conPath }/adminEventList.do?pageNum=${i}"> ${i }</a>
					</c:if>
				</c:forEach>
				<c:if test="${paging.endPage<paging.pageCnt }">
				<a href="${conPath }/adminEventList.do?pageNum=${paging.endPage+1 }" class="next">NEXT</a>
				</c:if>
			</div>
		</section>
	</div>
</body>
</html>