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
		$('#myFundingDetail').removeClass('openMypageFundingView');
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
				<th>FUNDING AMOUNT</th>
				<td><fmt:formatNumber value="${goodDetail.fundingAmount }" currencySymbol="true" /> 원</td>
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
					<th>이자지급 회차</th>
					<th>지급일</th>
					<th>금액</th>
				</tr>
				<c:forEach var="DNW" items="${userRewardDNWList }">
				<c:if test="${DNW.investmentReceiveCount>0 }">
				<tr>
					<td>${DNW.investmentReceiveCount }회차</td>
					<td><fmt:formatDate value="${DNW.dNWDate }" pattern="yyyy-MM-dd"/></td>
					<td><fmt:formatNumber value="${DNW.dNWAmount }" currencySymbol="true"/>원</td>
				</tr>
				</c:if>
				</c:forEach>
			</table>
			</c:if>
			<c:if test="${good.fundingCategory eq 1 }">
			<table><!-- REWARD -->
				<tr>
					<th>리워드</th>
					<th>리워드 옵션명</th>
					<th>지급 예정일</th>
				</tr>
				<tr>
					<td><img src="${conPath }/images/reward/${reward.rewardImage}" alt="리워드 이미지" width="150px"></td>
					<td>${reward.rewardName }</td>
					<td><fmt:formatDate value="${reward.fundingRewardDeliveryDate }" pattern="yyyy-MM-dd"/></td>
				</tr>
			</table>
			</c:if>
		</div>
</body>
</html>