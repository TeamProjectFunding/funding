<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<script>
$(function(){
	$('.closeButton').click(function(){
		$('#myGoodsDetail').removeClass('openMypageGoodsView');
	});
});
</script>
<body>
<div class="closeButton">
			<span></span>
			<span></span>	
		</div>
		<div class="thumnail">
			<img src="${conPath }/images/goods/${good.fundingThumbnailImage}" alt="thumnail">
			
		</div>
		
		<table class="goodsInfo">
			<tr>
				<th>TYPE</th>
				<td><c:if test="${good.fundingCategory eq 0 }">FUND</c:if><c:if test="${good.fundingCategory eq 1 }">REWARD</c:if></td>
			</tr>
			<tr>
				<th>TITLE</th>
				<td>${good.fundingName }</td>
			</tr>
			<c:if test="${good.fundingCategory eq 0 }">
			<tr>
				<th>INTEREST RATE</th>
				<td>${good.fundingInvestmentProfitRate }%(${good.fundingInvestmentPeriod }개월)</td>
			</tr>
			</c:if>
			<tr>
				<th>PERIOD</th>
				<td><fmt:formatDate value="${good.fundingStartDate }" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${good.fundingTargetDate }" pattern="yyyy-MM-dd"/></td>
			</tr>
			<c:if test="${good.fundingCategory eq 1 }">
			<tr>
				<th>DELIVERY DATE</th>
				<td><fmt:formatDate value="${good.fundingRewardDeliveryDate }" pattern="yyyy-MM-dd"/></td>
			</tr>
			</c:if>
			<tr>
				<th> AMOUNT</th>
				<td><fmt:formatNumber value="${good.fundingTargetAmount }" currencySymbol="true" /> 원</td>
			</tr>
			<tr>
				<th>PARTICIPANTS</th>
				<td>${good.fundingPeopleCount } 명</td>
			</tr>
		</table>
		<div class="interestWrap">
			<c:if test="${good.fundingCategory eq 0 }">
			<table>
			<tr>
				<th>계좌 잔액</th>
				<td>${company.companyAccountBalance }원</td>
				<th>1회당 이자지급액</th>
				<td><fmt:parseNumber value="${good.fundingTargetAmount*good.fundingInvestmentProfitRate/1200 }" integerOnly="true"/>원</td>
			</tr>
			<tr>
				<th>다음 이자 지급 일</th>
				<td><fmt:formatDate value="${reward.lastInterestReceivedDate }" pattern="yyyy-MM-dd"/> </td>
				<td colspan="2"><a href="#{conPath }/doInterestPayment.do?rewardCode=${reward.rewardCode }&companyId=${company.companyId}&changeMoney=${good.fundingTargetAmount*good.fundingInvestmentProfitRate/1200 }" class="button">이자 지급하기</a></td>
			</tr>
			
			</table>
			<table>
				<tr>
					<th>지급일</th>
					<th>금액</th>
				</tr>
				<c:forEach var="DNW" items="${companyDNWList }">
				<tr>
					<td>${DNW.investmentReceiveCount }회차</td>
					<td><fmt:formatDate value="${DNW.dNWDate }" pattern="yyyy-MM-dd"/></td>
					<td><fmt:formatNumber value="${DNW.dNWDate }" currencySymbol="true"/>원</td>
				</tr>
				</c:forEach>
			</table>
			</c:if>
			<c:if test="${good.fundingCategory eq 1 }">
			<table><!-- REWARD -->
				<tr>
					<th>리워드</th>
					<th>리워드 옵션명</th>
					<th>금액</th>
				</tr>
				<c:forEach var="reward" items="${rewardList }">
				<tr>
					<td><img alt="rewardImage" src="${conPath }/images/reward/${reward.rewardImage}"></td>
					<td>${reward.rewardName } </td>
					<td><fmt:formatNumber value="${reward.rewardCondition }" currencySymbol="true"/>원</td>
				</tr>
				</c:forEach>
			</table>
			</c:if>
		</div>
</body>
</html>