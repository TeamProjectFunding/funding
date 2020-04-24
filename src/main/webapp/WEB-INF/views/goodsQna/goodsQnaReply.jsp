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
	<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="boardWrap">
		<section class="boardWriteWrap">
			<h1>GOODS Q&A</h1>
			<form action="goodsQnaReplyWrite.do" method="post" enctype="">
			
				<table>
					<tr>
						<th>ADMIN</th>
						<td><input type="text" name="adminId" value="${admin.adminId }" readonly="readonly"></td>
					</tr>
					<tr>
						<th>${goodsQuestion.fundingQuestionNumber }-QUETION</th>
						<td><input type="number" name="fundingQuestionNumber" value="${goodsQuestion.fundingQuestionNumber }" readonly="readonly"></td>
					</tr>
					<tr>
						<th>QUESTION TITLE</th>
						<td>[Q]${goodsQuestion.fundingQuestionTitle }</td>
					</tr>
					<tr>
						<th>QUESTION CONTENT</th>
						<td>
							<textarea >${goodsQuestion.fundingQuestionContent }</textarea>
						</td>
					</tr>
					<tr>
						<th>REPLY CONTENT</th>
						<td>
							<textarea name="fundingQuestionReplyContent"></textarea>
						</td>
					</tr>
					<tr>
						<th id="buttonWrap" colspan="2">
							<input type="submit" value="SUBMIT" class="button">
							<input type="reset" value="RESET" class="button">
							<input type="button" value="BACK" class="button" onClick="history.back()">
						</th>
					</tr>
				</table>
			</form>
		</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>