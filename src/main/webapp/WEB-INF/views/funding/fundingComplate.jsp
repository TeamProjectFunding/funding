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
						<th colspan="2">${good.fundingName } 펀딩 성공 되었습니다.</th>
					</tr>
					<!-- 투자 -->
					<c:if test="${good.fundingCategory eq 0 }">
						<tr>
							<th>투자이율</th>
							<td>${reward.rewardInterst }%</td>
						</tr>
						<tr>
							<th>투자기간</th>
							<td><fmt:formatDate value="${reward.fundingTargetDate }" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${reward.investmentMaturityDate}" pattern="yyyy-MM-dd"/>  (${reward.fundingInvestmentPeriod*30 }일) </td>
						</tr>
					</c:if>
					
					<!-- 리워드 -->
					<c:if test="${good.fundingCategory eq 1 }">
					<tr>
						<th>리워드 상품</th>
						<td><img src="${conPath }/images/reward/${reward.rewardImage}" alt="rewardProductImage"></td>
					</tr>
					<tr>
						<th>리워드 제공예상일</th>
						<td><fmt:formatDate value="${reward.fundingRewardDeliveryDate }" pattern="yyyy-MM-dd"/> 일괄배송</td>
					</tr>
					<tr>
						<th>후원금</th>
						<td><fmt:formatNumber value="${fundingGoodsDetail.fundingRewardAddDonation }" currencySymbol="true"/> 원</td>
					</tr>
					</c:if>
					<!-- 공통 -->
					<tr>
						<th>투자금액</th>
						<td><fmt:formatNumber value="${fundingGoodsDetail.fundingAmount }" currencySymbol="true"/> 원</td>
					</tr>
					<tr>
						<th>남은 예치금</th> 
						<td><fmt:formatNumber value="${user.userAccountBalance }" currencySymbol="true"/>  원</td>
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