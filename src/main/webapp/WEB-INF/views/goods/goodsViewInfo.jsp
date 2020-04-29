<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>FUNDING VIEW CORE INFOMATION</title>
<body>
	<div class="company">
		<h3>기업소개</h3>
		<p>${good.companyIntroduction}</p>
		<h3>펀딩상품소개</h3>
		<p>${good.fundingDescription}</p>
		<img src="${conPath }/images/goods/${good.fundingDetailImage}" alt="투자설명서">
	</div>
	<div class="detail">
		<h3>설명서</h3>
		<img src="${conPath }/images/goods/${good.fundingExplanationFile}" alt="투자설명서">
	</div>
</body>
</html>