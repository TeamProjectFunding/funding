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
	
	<div id="contentWrap" class="goodsWrap">
	<section class="goodsViewWrap">
		<div id="goodsBasicInfomationWrap">
			<div class="thumnail">
				<img src="${conPath}/images/fundingProduct_01.jpeg" alt="">
			</div>
			<div class="infomationTextSection">
				<h1><span>[companyName]</span> <br/>funding Title</h1>
				<ul>
					<li>
						<p>159,086,576원  <span>달성목표금액 30,032,574원30%</span></p>
					</li>
					<li>
						<p>13일 남음 <span>2020.04.21 15:00 마감</span></p>
					</li>
					<li>
						<p><img src="" alt="investorProfile"><span>+20 투자성공</span></p>
					</li>
				</ul>
				<div id="buttonWrap">
					<a href="fundingStep1.do" class="button">FUNDING</a>
					<a href="pick.do" class="button">♡</a>
				</div>
			</div>
		</div>
		
		<div id="investmentRiskNotice">
			<p clsss="riskNotice">투자 위험 고지비상장기업 투자는 원금 손실의 가능성이 크니 <a href="">투자 위험 안내</a>를 꼭 확인하세요.</p>
			<p class="serviceInfomation">서비스 안내개인 일반 투자자의 연간 투자 한도가 동일 발행인 기준 200만원→500만원, 누적 투자 금액 500만원→1,000만원으로 확대되었습니다.</p>
		</div>
		
		<ul class="goodsInfoNavigation">
			<li><a href="goodsViewCoreInfomation.do">투자정보</a></li>
			<li><a href="goodsViewRisk.do">투자위험</a></li>
			<li><a href="goodsViewNews.do">새소식</a></li>
			<li><a href="goodsViewDebate.do">토론</a></li>
			<li><a href="goodsViewInvestor.do"><span>투자자</span></a></li>
		</ul>
		
		<div id="goodsViewContentWrap" class="investorWrap">
			
		</div>
	</section>
	</div>
	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>