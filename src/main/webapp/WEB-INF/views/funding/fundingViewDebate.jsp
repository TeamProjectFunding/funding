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
	
	<section id="fundingWrap" class="fundingViewWrap">
		<div id="fundingBasicInfomationWrap">
			<div class="thum">
				<img alt="" src="fundingThumnail">
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
						<img src="" alt="investorProfile"><span>+20 투자성공</span></p>
					</li>
				</ul>
				<div class="fundingButtonWrap">
					<a href="fundingStep1.do" class="fundingBtn">FUNDING</a>
					<a href="pick.do" class="pickBtn">♡</a>
				</div>
			</div>
		</div>
		
		<div id="investmentRiskNotice">
			<p clsss="riskNotice">투자 위험 고지비상장기업 투자는 원금 손실의 가능성이 크니 <a href="">투자 위험 안내</a>를 꼭 확인하세요.</p>
			<p class="serviceInfomation">서비스 안내개인 일반 투자자의 연간 투자 한도가 동일 발행인 기준 200만원→500만원, 누적 투자 금액 500만원→1,000만원으로 확대되었습니다.</p>
		</div>
		
		
		<ul class="fundingInfoNavigation">
			<li><a href="fundingViewCoreInfomation.do">투자정보</a></li>
			<li><a href="fundingViewRisk.do">투자위험</a></li>
			<li><a href="fundingViewNews.do">새소식</a></li>
			<li><a href="fundingViewDebate.do">토론</a></li>
			<li><a href="fundingViewInvestor.do">투자자</a></li>
		</ul>
		
		<div id="fundingViewContentWrap"  class="coreInfomationWrap">
			<div class="company">
				<h3>기업소개</h3>
				<p>
					2014년 크리스마스 저녁 뉴스에서 방영된 아마존의 kiva 시스템을 보고 우리가 가지고있는 기술로 충분히 개발할수있다는 생각으로 <br>
					그동안 해오던 교육용로봇사업을 같이 일하던 직원에게 무상으로 사업권을 넘기고 물류로봇사업을 시작하였습니다. <br>
					개발 자금이 없어 국책 과제를 신청하여 15년 개발 시작하였고 16년 프로토타입의 QR code를 인식하는 물류로봇을 개발하였고 <br>
					16년 상용화 할수있는 물류로봇 으로 발전시켜 17년 완성된 물류로봇을 개발하였고 명실상부한 로봇의 위치인식 핵심역량인 카메라 비전 기술과 모션제어기술을 이용한 무인이동체 전문기업으로 발전하였으며, <br>
					물류이송로봇과 주차로봇을 연구개발 상용화한 벤처기업으로 물류이송 로봇의 total solution을 지향하는 기업으로 성장 하였습니다. <br>
					개발된 제품을 상용화하여 다수의 납품실적을 보유하고 있고 연구개발 과 마케팅이 조화를 이룬 물류로봇 전문기업입니다. 2021년 까지 세계 최고의 물류이송로봇 전문기업으로 성장 하고자 합니다.
				</p>
			</div>
			<div class='detail'>
				<h3>상세내용</h3>
				<img src="" alt="투자설명서">
			</div>
		</div>
		<div>
			
		</div>
	</section>
</body>
</html>