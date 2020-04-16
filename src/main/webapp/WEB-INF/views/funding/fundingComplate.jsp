<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FUNDING VIEW CORE INFOMATION</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
	<jsp:include page="../main/header.jsp" />
	
	<section id="fundingWrap" class="fundingStep1">
		<ul id="fundingStep">
			<li><span>투자 위험 안내 확인/동의</span></li>
			<li>예치금 확인/투자금액 입력</li>
			<li>투자 내역 확인 및 완료</li>
		</ul>
			
	</section>
</body>
</html>