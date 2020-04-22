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
	<jsp:include page="../adminMenu.jsp" />
	
	<div id="contentWrap" class="adminMainWrap">
		<section id="qnaWrap">
			<h1>REPLY</h1>
			
			<form action="${conPath}/adminQnaView.do" method="post" >
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
					<th id="buttonWrap">
					
						<c:if test="${(qnaDetail.qnAOriginalWriter == 0 || qnaDetail.qnAOriginalWriter == 1) && not empty admin }">
							<a href="adminQnaReplyForm.do?qnANumber=${qnaDetail.qnANumber}" class="button">REPLY</a>
						</c:if>
						
						<a href="#none" onclick="history.back()" class="button">뒤로</a>
												
						<a href="${conPath}/adminMain.do?" class="button">MAIN</a>
												
					</th>
				</tr>
			</table>
				
			</form>
		</section>
	</div>
</body>
</html>