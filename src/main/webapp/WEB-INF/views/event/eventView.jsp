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
		<section class="boardViewWrap">
			<h1>EVENT</h1>
			<table>
				<tr>
					<th>${event.eventTilte}</th>
				</tr>
				<tr>
					<th><span>기간</span>${event.eventStartDate} ~${event.eventEndDate } </th>
				</tr>
				<tr>
					<td class="boardContent">
						<img src="${conPath}/images/event/${event.eventDetailImage}" alt=""><br/>
						${event.eventContent }
					</td>
				</tr>
				<tr>
					<td>
						<img src="${conPath }/images/event/${event.eventProductImage}" alt=""><br/>
						${event.eventProductName }
					</td>
				</tr>
				<%-- <tr>
					<th id="buttonWrap">
					
						<c:if test="${(qnaDetail.qnAOriginalWriter == 0 || qnaDetail.qnAOriginalWriter == 1) && not empty admin }">
							<a href="qnaReplyForm.do?qnANumber=${qnaDetail.qnANumber}" class="button">REPLY</a>
						</c:if>
						<c:if test="${qnaDetail.qnAOriginalWriter == 2 && (not empty user || not empty company) }">
							<a href="qnaReplyForm.do?qnANumber=${qnaDetail.qnANumber}" class="button">REPLY</a>
						</c:if>
						
						<c:if test="${(qnaDetail.qnAOriginalWriter eq 0 && qnaDetail.userId eq user.userId) || 
							(qnaDetail.qnAOriginalWriter eq 1 && qnaDetail.companyId eq company.companyId) || not empty admin }">
							<a href="${conPath}/qnaModifyForm.do?qnANumber=${qnaDetail.qnANumber}&pageNum=${param.pageNum}" class="button">MODIFY</a>
						</c:if>
						<a href="${conPath}/qnaList.do?pageNum=${param.pageNum}" class="button">List</a>
												
					</th>
				</tr> --%>
			</table>
		</section>
	</div>
</body>
</html>