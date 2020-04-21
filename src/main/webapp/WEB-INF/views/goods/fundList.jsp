<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<!-- 현재 날짜 -->
	<jsp:useBean id="today" class="java.util.Date" />
	<fmt:parseNumber value="${today.time / (1000*60*60*24)}"
		integerOnly="true" var="nowDate" />



	<div id="contentWrap" class="goodsWrap">
		<section id="fundingWrap" class="fundingListWrap">
			<h1>${category }</h1>
			<c:forEach var="good" items="${goods}">
				<div class="goods">
					<ul>
						<li class="thumnail"><a href='goodsViewCoreInfomation.do?fundingCode=${good.fundingCode }'><img
								src="${conPath}/images/goods/${good.fundingThumbnailImage}">
								<span><c:if test="${good.fundingCategory eq 0 }">FUND</c:if>
									<c:if test="${good.fundingCategory eq 1 }">REWARD</c:if>
								 </span></a>
						</li>
						<li class="companyName">${good.companyName }</li>
						<li class="goodsName">${good.fundingName }</li>
						<!-- endDate 설정 -->
						<fmt:parseNumber
							value="${good.fundingTargetDate.time / (1000*60*60*24)}"
							integerOnly="true" var="endDate" />
						<li class="deadline">deadline after ${endDate-nowDate } days</li>
					</ul>
				</div>
			</c:forEach>
			<div class="paging">
					<a href="" class="prev">PREV</a>
					<a href="" class="current">1</a>
					<a href="">2</a>
					<a href="">3</a>
					<a href="">4</a>
					<a href="">5</a>
					<a href="" class="next">NEXT</a> 
				</div>
		</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>