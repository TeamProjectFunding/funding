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
	<div id="contentWrap" class="boardWrap">
		<section class="boardViewWrap">
			<h1>NOTICE</h1>
			<table>
				<tr>
					<th>${notice.noticeTilte }</th>
				</tr>
				<tr>
					<td class="boardContent">
						${notice.noticeContent }						
					</td>
				</tr>
				<tr>
					<th></th>
				</tr>
				<tr>
					<th id="buttonWrap">
						<a href="noticeList.do" class="button">BACK</a>
					</th>
				</tr>
			</table>
		</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>