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
<link href="${conPath}/css/style.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="../main/header.jsp" />
		<div id="contentWrap" class="boardWrap">
		<section class="boardListWrap">
			<h1>GOODS Q&A</h1>
			<table>
				<tr>
					<th>NO</th>
					<th>TITLE</th>
					<th>WRITER</th>
					<th>DATE</th>
				</tr>
				<c:forEach var="Question" items="${fundingQuestionList}">
				<tr class="boardInfo">
					<td>${Question.fundingQuestionNumber }</td>
					<td><a href="${conPath }/goodsQnaView.do?">[Q]${Question.fundingQuestionTitle }</a></td>
					<td>${Question.userName}</td>
					<td>${Question.fundingQuestionDate }</td>
					<c:if test="${not empty admin}">
					<td><a href="goodsQnaReplyForm.do" class="button">REPLY</a></td>
					</c:if>
				</tr>
				</c:forEach>
				<c:if test="${not empty user}">
				<tr><td colspan="4"><button  onclick="location.href='${conPath }/goodsQnaWriteForm.do?fundingCode=${param.fundingCode }'" class="button">Write</button></td><tr>
				</c:if>
			</table>
			<div class="paging">
				<c:if test="${paging.startPage>paging.blockSize }">
				<a href="${conPath }/goodsQnaList.do?pageNum=${paging.startPage-1 }&fundingCode=${param.fundingCode}" class="prev">PREV</a>
				</c:if>
				<c:forEach var="i" begin="${paging.startPage }"	end="${paging.endPage }">
					<c:if test="${paging.currentPage==i }">
						<a href="#none" class="current">${i }</a>  
					</c:if>
					<c:if test="${paging.currentPage!=i }">
						<a href="${conPath }/goodsQnaList.do?pageNum=${i}&fundingCode=${param.fundingCode}"> ${i }</a>
					</c:if>
				</c:forEach>
				<c:if test="${paging.endPage<paging.pageCnt }">
				<a href="${conPath }/goodsQnaList.do?pageNum=${paging.endPage+1 }&fundingCode=${param.fundingCode}" class="next">NEXT</a>
				</c:if>
			</div>
		</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>