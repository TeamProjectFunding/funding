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
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="boardWrap">
		<section class="boardListWrap">
			<h1>NOTICE</h1>
			<form action="">
				<table>
					<tr>
						<th>
							<input type ="text" name="searchWord" value="${param.searchWord }" placeholder="제목 검색">
							<input type ="submit" value="SEARCH" class="button">
						</th>
					</tr>
				</table>
			</form>
			<table>
				<tr>
					<th>NO</th>
					<th>TITLE</th>
					<th>WRITER</th>
					<th>DATE</th>
					<th>HIT</th>
				</tr>
				<c:forEach var="noticeS" items="${noticeSearchList}">
				<tr class="boardInfo">
					<td>${noticeS.noticeNumber }</td>
					<td><a href="${conPath }/noticeView.do?">${noticeS.noticeTilte}</a></td>
					<td>${noticeS.adminId }</td>
					<td>${noticeS.noticeDate }</td>
					<td>${noticeS.noticeHit }</td>
				</tr>
				</c:forEach>
			</table>
			<div class="paging">
				<c:if test="${paging.startPage>paging.blockSize }">
				<a href="${conPath }/noticeList.do?pageNum=${paging.startPage-1 }&searchWord=${param.searchWord}" class="prev">PREV</a>
				</c:if>
				<c:forEach var="i" begin="${paging.startPage }"	end="${paging.endPage }">
					<c:if test="${paging.currentPage==i }">
						<a href="#none" class="current">${i }</a>  
					</c:if>
					<c:if test="${paging.currentPage!=i }">
						<a href="${conPath }/noticeList.do?pageNum=${i}&searchWord=${param.searchWord}"> ${i }</a>
					</c:if>
				</c:forEach>
				<c:if test="${paging.endPage<paging.pageCnt }">
				<a href="${conPath }/noticeList.do?pageNum=${paging.endPage+1 }&searchWord=${param.searchWord}" class="next">NEXT</a>
				</c:if>
			</div>
		</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>