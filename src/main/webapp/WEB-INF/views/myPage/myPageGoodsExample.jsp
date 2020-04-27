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
		<div id="fundingGraphWrap">
			<div class="graphAxis">
				<span class="yAxisTitle">금액 [단위 : 만원]</span>
				<div class="yAxisWrap">
					<span style="">2500</span>
					<span>2000</span>
					<span>1500</span>
					<span>1000</span>
					<span>500</span>
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
						<div class="targetBar" style="height:20%;">
							<span>500</span>
							<div class="fundingBar" style="height:100%;">
								<a href="#none" class="myFundingViewButton">FUNDINGTITLE<br/> + DETAIL</a>
							</div>
						</div>
					</div>
					
					<div class="fundingBarWrap barAnimate" style="">
						<div class="whiteBar" style="height:60%;"></div>
						<div class="targetBar" style="height:40%;">
							<span>1000</span>
							<div class="fundingBar" style="height:100%;">
								<a href="#none" class="myFundingViewButton">FUNDINGTITLE<br/> + DETAIL</a>
							</div>
						</div>
					</div>
					
					<div class="fundingBarWrap barAnimate" style="">
						<div class="whiteBar" style="height:40%;"></div>
						<div class="targetBar" style="height:60%;">
							<span>1500</span>
							<div class="fundingBar fundingFail" style="height:90%;">
								<a href="#none" class="myFundingViewButton">FUNDINGTITLE<br/> + DETAIL</a>
							</div>
						</div>
					</div>
					
					<div class="fundingBarWrap barAnimate" style="">
						<div class="whiteBar" style="height:20%;"></div>
						<div class="targetBar" style="height:80%;">
							<span>2000</span>
							<div class="fundingBar" style="height:120%;">
								<a href="#none" class="myFundingViewButton">REWARDTITLE<br/> + DETAIL</a>
							</div>
						</div>
					</div>
					
					<div class="fundingBarWrap barAnimate" style="">
						<div class="whiteBar" style="height:0%;"></div>
						<div class="targetBar" style="height:100%;">
							<span>2500</span>
							<div class="fundingBar fundingFail" style="height:80%;">
								<a href="#none" class="myFundingViewButton">FUNDINGTITLE<br/> + DETAIL</a>
							</div>
						</div>
					</div>
				</div>
				
				<script>
					$(function(){
						$('.fundingBarWrap').removeClass('barAnimate');
						
						$('.myFundingViewButton').click(function(){
							$('#myGoodsDetail').addClass('openMypageGoodsView');
						});
						
						$('.myFundingViewClose').click(function(){
							$('#myFundingDetail').addClass();
						});
						$('.closeButton').click(function(){
							$('#myGoodsDetail').removeClass();
						});
					});
				</script>
			</div>
		</div>
		<jsp:include page="myPageGoodsDetail.jsp" />
	</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>