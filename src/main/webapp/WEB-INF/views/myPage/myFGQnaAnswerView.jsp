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
					<th>문의하신 사항의 답변입니다.</th>
				</tr>
				<tr>
					<th>ADMIN</th>
				</tr>
				<tr>
					<td class="boardContent">
						${myFGQuestionReplyDetail.fundingQuestionReplyContent}
					</td>
				</tr>				
				<tr>
					<th id="buttonWrap">							
						
						<a href="#none" class="button" onclick="history.back()">뒤로</a>
												
					</th>
				</tr>
			</table>
		</section>
	</div>
</body>
</html>