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
<link href="${conPath}/css/style.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	
	<div id="contentWrap" class="fundingWrap">
	<section id="fundingWrap">
		<div id="fundingStep" class="fundingStep2">
			<ul id="fundingStep">
				<li>투자 위험 안내 확인/동의</li>
				<li>예치금 확인/투자금액 입력</li>
				<li><span>투자 내역 확인 및 완료</span></li>
			</ul>
			<h1>예치금 확인/투자금액 입력</h1>
			<form>
				<table>
					<tr>
						<th colspan="2">GOODS TITLE 펀딩 성공 되었습니다.</th>
					</tr>
					<!-- 투자 -->
					<tr>
						<th>투자이율</th>
						<td>15%</td>
					</tr>
					<tr>
						<th>투자기간</th>
						<td>2020-04-21 ~ 2020-07-21 (3개월) </td>
					</tr>
					
					<!-- 리워드 -->
					<tr>
						<th>리워드 상품</th>
						<td><img src="" alt="rewardProductImage"></td>
					</tr>
					<tr>
						<th>리워드 제공예상일</th>
						<td>2020-07-21 일괄배송</td>
					</tr>
					<tr>
						<th>후원금</th>
						<td>50,000 원</td>
					</tr>
					<!-- 공통 -->
					<tr>
						<th>투자금액</th>
						<td>500,000 원</td>
					</tr>
					<tr>
						<th>남은 예치금</th> 
						<td>100,000,000 원</td>
					</tr>
					<tr>
						<th id="buttonWrap" colspan="2">
						<input type="button" value="HOME" class="button" onClick="location.href='${conPath}/main.do'">
						</th>
					</tr>
				</table>
			</form>
		</div>
	</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>