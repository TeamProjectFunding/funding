<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<body>
<!-- 현재 날짜 -->
	<jsp:useBean id="today" class="java.util.Date" />
	<fmt:parseNumber value="${today.time / (1000*60*60*24)}"
		integerOnly="true" var="nowDate" />
	<c:forEach var="fund" items="${fundList}">
		<div class="goods">
			<ul>
				<li class="thumnail"><a href='goodsViewCoreInfomation.do?fundingCode=${fund.fundingCode }'><img
						src='${conPath}/images/goods/${fund.fundingThumbnailImage}'
						alt="펀딩썸네일이미지"> <span><c:if
								test="${fund.fundingCategory eq 0 }">FUND</c:if>
							<c:if test="${fund.fundingCategory eq 1 }">REWARD</c:if></span></a></li>
				<li class="companyName">${fund.companyName }</li>
				<li class="goodsName">${fund.fundingName }</li>
				<!-- endDate 설정 -->
				<fmt:parseNumber
					value="${fund.fundingTargetDate.time / (1000*60*60*24)}"
					integerOnly="true" var="endDate" />
				<li class="deadline">deadline after ${endDate-nowDate } days</li>
			</ul>
		</div>
	</c:forEach>
</body>
</html>