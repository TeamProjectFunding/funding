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
<link href="${conPath}/css/common.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="myPageWrap">
	<section class="myPageGoodsWrap" >
		<h1>MY GOODS</h1>
		<p>
			<c:if test="${paging.startPage > 1 }">
			<a href="${conPath }/myPageGoods.do?companyId=${company.companyId }&pageNum=${paging.startPage-1 }" class="prev">PREV</a>
			</c:if>
			<c:if test="${paging.endPage < paging.pageCnt }">
			<a href="${conPath }/myPageGoods.do?companyId=${company.companyId }&pageNum=${paging.endPage+1 }" class="next">NEXT</a>
			</c:if>
		</p>
		<div id="fundingGraphWrap">
			<div class="graphAxis">
				<span class="yAxisTitle">금액 [단위 : 만원]</span>
				<div class="yAxisWrap">
					<span style=""><fmt:formatNumber value="${maxRecruitmentAmount/10000}" pattern="" /></span>
					<span><fmt:formatNumber value="${maxRecruitmentAmount*0.8/10000}" pattern="" /></span>
					<span><fmt:formatNumber value="${maxRecruitmentAmount*0.6/10000}" pattern="" /></span>
					<span><fmt:formatNumber value="${maxRecruitmentAmount*0.4/10000}" pattern="" /></span>
					<span><fmt:formatNumber value="${maxRecruitmentAmount*0.2/10000}" pattern="" /></span>
				</div>
				<span class="xAxisTitle">날짜</span>
				<div class="xAxisWrap">
				<c:forEach var="good" items="${companyEndFundingList }">
					<span><fmt:formatDate value="${good.fundingStartDate }" pattern="yyyy-MM-dd"/></span>
				</c:forEach>
				</div>
				<div class="grabh">
					<c:forEach var="good" items="${companyEndFundingList }">
					<c:set var="highRate" value="${good.fundingTargetAmount*good.fundingTargetRate/maxRecruitmentAmount }"/>
					<div class="fundingBarWrap barAnimate" style="" onclick="fundingDetailView('${good.fundingCode}');">
						<div class="whiteBar" style="height:${100-highRate}%;"></div>
						<div class="targetBar" style="height:${highRate}%;">
							<span><fmt:parseNumber value="${good.fundingTargetAmount*good.fundingTargetRate/1000000 }" integerOnly="true"/> </span>
							<c:if test="${good.fundingTargetRate >= 100 }">
							<div class="fundingBar" style="height:${good.fundingTargetRate}%;">
								<a href="#none" class="myFundingViewButton fundingCode${good.fundingCode }">FUNDINGTITLE<br/> + DETAIL</a>
							</div>
							</c:if>
							<c:if test="${good.fundingTargetRate < 100 }">
							<div class="fundingBar fundingFail" style="height:${good.fundingTargetRate}%;">
								<a href="#none" class="myFundingViewButton fundingCode${good.fundingCode }">FUNDINGTITLE<br/> + DETAIL</a>
							</div>
							</c:if>
						</div>
					</div>
					</c:forEach>
				</div>
				<script>
					function fundingDetailView(fundingCode){
						 var companyId = '${company.companyId}';
						 $.ajax({
		                     url : '${conPath}/fundingDetailView.do',
		                     datatype : 'html',
		                     data : "companyId="+companyId+"&fundingCode="+fundingCode,
		                     success : function(data, status){
		                        $('#myGoodsDetail').html(data);
		                     }
		                  });
					}
				</script>
				
				<script>
					$(function(){
						$('.fundingBarWrap').removeClass('barAnimate');
						
						$('.myFundingViewButton').click(function(){
							$('#myGoodsDetail').addClass('openMypageGoodsView');
						});
						
						$('.myFundingViewClose').click(function(){
							$('#myFundingDetail').addClass();
						});
						
					});
				</script>
			</div>
		</div>
		<jsp:include page="myPageGoodsDetail.jsp"/>
	</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>