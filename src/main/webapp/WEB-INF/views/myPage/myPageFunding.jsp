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
	<div id="contentWrap" class="myPageWrap">
	<section class="myPageFundingWrap" >
		<h1>MY FUNDING</h1>
		<p>
			<a href="${conPath }/myPageFunding.do?userId=${user.userId }&pageNum=${paging.startPage-1 }" class="prev">PREV</a>
			<a href="${conPath }/myPageFunding.do?userId=${user.userId }&pageNum=${paging.endPage+1 }" class="next">NEXT</a>
		</p>
		<div id="fundingGraphWrap">
			<div class="graphAxis">
				<span class="yAxisTitle">금액 [단위 : 만원]</span>
				<div class="yAxisWrap">
					<span style=""><fmt:formatNumber value="${maxFundingAmount/10000}" pattern="" /></span>
					<span style=""><fmt:formatNumber value="${maxFundingAmount*0.8/10000}" pattern="" /></span>
					<span style=""><fmt:formatNumber value="${maxFundingAmount*0.6/10000}" pattern="" /></span>
					<span style=""><fmt:formatNumber value="${maxFundingAmount*0.4/10000}" pattern="" /></span>
					<span style=""><fmt:formatNumber value="${maxFundingAmount*0.2/10000}" pattern="" /></span>
				</div>
				<span class="xAxisTitle">결제일</span>
				<div class="xAxisWrap">
					<c:forEach var="user" items="${userFundingList }">
					<span style=""><fmt:formatDate value="${user.fundingDate }" pattern="yyyy-MM-dd"/></span>
					</c:forEach>
				</div>
				<div class="grabh">
					<c:forEach var="fundingDetail" items="${userFundingList }">
					<c:set var="highRate" value="${fundingDetail.fundingAmount*100/maxFundingAmount }"/>
					<div class="fundingBarWrap barAnimate" style="" onclick="fundingDetailUserView('${fundingDetail.fundingCode}','${fundingDetail.fundingGoodsDetailNumber}');">
						<div class="whiteBar" style="height:${100-highRate}%;"></div>
						<div class="fundingBar" style="height:${highRate}%;">
							<a href="#none" class="myFundingViewButton">FUNDINGTITLE<br/> + DETAIL</a>
						</div>
					</div>
					</c:forEach>
				</div>
				<script>
					function fundingDetailUserView(fundingCode,fundingGoodsDetailNumber){
						 $.ajax({
		                     url : '${conPath}/fundingDetailUserView.do',
		                     datatype : 'html',
		                     data : "fundingCode="+fundingCode+"&fundingGoodsDetailNumber="+fundingGoodsDetailNumber,
		                     success : function(data, status){
		                        $('#myFundingDetail').html(data);
		                     }
		                  });
					}
				</script>
				<script>
					$(function(){
						$('.fundingBarWrap').removeClass('barAnimate');
						
						$('.myFundingViewButton').click(function(){
							$('#myFundingDetail').addClass('openMypageFundingView');
						});
						$('.myFundingViewClose').click(function(){
							$('#myFundingDetail').addClass();
						});
						
					});
				</script>
			</div>
		</div>
		<jsp:include page="myPageFundingDetail.jsp" />
	</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>