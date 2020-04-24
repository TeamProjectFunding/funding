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
		<section class="boardViewWrap">
		<h1>GOODS Q&A </h1>
				<table>
					<tr>
						<th>USERNAME</th>
						<td>user name</td>
					</tr>
					<tr>
						<th>GOODS NAME</th>
						<td>goods name</td>
					</tr>
					<tr>
						<th>CONTENT</th>
						<td>
							궁금하다 답변바람
						</td>
					</tr>
					<tr>
						<th id="buttonWrap" colspan="2">
							<input type="button" value="MODIFY" class="button" onClick="location.href='${conPath }/goodsQnaModifyForm.do'">
							<input type="button" value="REPLY" class="button" onClick="location.href='${conPath }/adminGoodsQnaReplyyForm.do'">
							<input type="button" value="LIST" class="button" onClick="location.href='${conPath }/goodsQnaList.do'">
							<input type="button" value="BACK" class="button" onClick="history.back()">
						</th>
					</tr>
					
				</table>
		</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>