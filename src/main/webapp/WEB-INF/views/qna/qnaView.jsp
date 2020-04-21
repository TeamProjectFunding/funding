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
			<h1>Q&A</h1>
			<table>
				<tr>
					<th>${qnaDetail.qnATitle}</th>
				</tr>
				<tr>
					<th>${qnaDetail.writer}</th>
				</tr>
				<tr>
					<td class="boardContent">
						${qnaDetail.qnAContent}
					</td>
				</tr>
				<tr>
					<th></th>
				</tr>
				<tr>
					<th id="buttonWrap">
						<a href="adminQnaReplyForm.do?qnANumber=${qnaDetail.qnANumber}" class="button">REPLY</a>
						<c:if test="${(qnaDetail.qnAOriginalWriter eq 0 && qnaDetail.userId eq user.userId) || 
							(qnaDetail.qnAOriginalWriter eq 1 && qnaDetail.companyId eq company.companyId) || not empty admin }">
							<a href="${conPath}/qnaModifyForm.do?qnANumber=${qnaDetail.qnANumber}&pageNum=${param.pageNum}" class="button">MODIFY</a>
						</c:if>
						<a href="${conPath}/qnaList.do?pageNum=${param.pageNum}" class="button">List</a>
												
					</th>
				</tr>
			</table>
		</section>
	</div>
</body>
</html>