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
		<div id="fundingGraphWrap">
			<div class="graphAxis">
				<span class="yAxisTitle">금액 [단위 : 만원]</span>
				<div class="yAxisWrap">
					<span style="">25</span>
					<span>20</span>
					<span>15</span>
					<span>10</span>
					<span>5</span>
				</div>
				<span class="xAxisTitle">회차</span>
				<div class="xAxisWrap">
					<span style="">1</span>
					<span>2</span>
					<span>3</span>
					<span>4</span>
					<span>5</span>
				</div>
				<div class="grabh">
					<div class="fundingBarWrap barAnimate" style="">
						<div class="whiteBar" style="height:80%;"></div>
						<div class="fundingBar" style="height:20%;">
							<a href="#none" class="myFundingViewButton">FUNDINGTITLE<br/> + DETAIL</a>
						</div>
					</div>
					<div class="fundingBarWrap barAnimate" style="">
						<div class="whiteBar" style="height:60%; "></div>
						<div class="fundingBar" style="height:40%;">
							<a href="#none" class="myFundingViewButton">FUNDINGTITLE<br/> + DETAIL</a>
						</div>
					</div>
					<div class="fundingBarWrap barAnimate" style="">
						<div class="whiteBar" style="height:40%;"></div>
						<div class="fundingBar" style="height:60%;">
							<a href="#none" class="myFundingViewButton">FUNDINGTITLE<br/> + DETAIL</a>
						</div>
					</div>
					<div class="fundingBarWrap barAnimate" style="">
						<div class="whiteBar" style="height:20%;"></div>
						<div class="fundingBar" style="height:80%;">
							<a href="#none" class="myFundingViewButton">FUNDINGTITLE<br/> + DETAIL</a>
						</div>
					</div>
					<div class="fundingBarWrap barAnimate" style="">
						<div class="whiteBar" style="height:0%;"></div>
						<div class="fundingBar" style="height:100%;">
							<a href="#none" class="myFundingViewButton">FUNDINGTITLE<br/> + DETAIL</a>
						</div>
					</div>
				</div>
				
				<script>
					$(function(){
						$('.fundingBarWrap').removeClass('barAnimate');
						
						$('.myFundingViewButton').click(function(){
							$('#myFundingDetail').addClass('openMypageFundingView');
						});
						$('.myFundingViewClose').click(function(){
							$('#myFundingDetail').addClass();
						});
						$('.closeButton').click(function(){
							$('#myFundingDetail').removeClass();
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