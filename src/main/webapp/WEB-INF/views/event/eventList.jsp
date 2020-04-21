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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="${conPath}/css/common.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<jsp:useBean id="today" class="java.util.Date" />
   	<fmt:parseNumber value="${today.time / (1000*60*60*24)}"
      integerOnly="true" var="nowDate" />
	<div id="contentWrap" class="eventWrap">
		<section id="eventWrap" class="eventListWrap">
				<h1>EVENT</h1>
				<form action="">
				<table>
					<tr>
						<th>
							<input type ="text" name="doingEventSearchWord" value="${param.doingEventSearchWord}" placeholder="제목 검색">
							<input type ="submit" value="SEARCH" class="button">
						</th>
					</tr>
				</table>
			</form>
				<c:forEach var="event" items="${eventSearchList}">
				<div class="event">
					<ul>
						<li class="thumnail">
							<a href='eventView.do'><img src="${conPath}/images/fundingProduct_01.jpeg "><span>진행중</span></a>
						</li>
						<li class="eventTitle">${event.eventTilte }</li>
				 <fmt:parseNumber value="${event.eventEndDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate" />
						<li class="deadline">deadline after ${endDate-nowDate } days</li>
					</ul>
				</div>
				</c:forEach>
			
				<div class="paging">
				<c:if test="${paging.startPage>paging.blockSize }">
				<a href="${conPath }/eventList.do?pageNum=${paging.startPage-1 }&doingEventSearchWord=${param.doingEventSearchWord}" class="prev">PREV</a>
				</c:if>
				<c:forEach var="i" begin="${paging.startPage }"	end="${paging.endPage }">
					<c:if test="${paging.currentPage==i }">
						<a href="#none" class="current">${i }</a>  
					</c:if>
					<c:if test="${paging.currentPage!=i }">
						<a href="${conPath }/eventList.do?pageNum=${i}&doingEventSearchWord=${param.doingEventSearchWord}"> ${i }</a>
					</c:if>
				</c:forEach>
				<c:if test="${paging.endPage<paging.pageCnt }">
				<a href="${conPath }/eventList.do?pageNum=${paging.endPage+1 }&doingEventSearchWord=${param.doingEventSearchWord}" class="next">NEXT</a>
				</c:if>
				</div>
		</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>