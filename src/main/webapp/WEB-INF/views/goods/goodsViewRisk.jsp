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
					<a href="goodsQnaWirteForm.do" class="button">Q&A</a>
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
			<li><a href="goodsViewRisk.do"><span>투자위험</span></a></li>
			<li><a href="goodsViewNews.do">새소식</a></li>
			<li><a href="goodsViewDebate.do">토론</a></li>
			<li><a href="goodsViewInvestor.do">투자자</a></li>
		</ul>
		<div id="goodsViewContentWrap"  class="riskWrap">
			<h3>투자 위험 안내</h3>
			<p>진행되는 금융투자상품에 대한 투자는 아래와 같은 투자 위험을 가지고 있습니다.<br><br>

				<h4>원금손실의 위험이 있습니다.</h4><br><br>
				<p>모든 투자는 원금손실의 위험을 가지고 있습니다. 때문에 투자 시 한 곳에만 투자하지 아니하고 다양한 상품에 분산하여 투자하실 것을 권유 드립니다.
				온라인소액투자중개업자로 증권 모집을 중개하는 업을 영위하고 있으며, 원금손실에 대한 책임을 지지 않습니다. 모든 투자는 투자자 본인의 의사에 따라 결정되어야 합니다.</p><br><br><br>
				
				<h4>환금성이 낮습니다.</h4><br><br>
				<p>비상장기업에 대한 투자는 환금성이 낮습니다. 중개를 통해 모집된 증권은 6개월간 전매가 제한되며, 매매가 가능한 시점이 되더라도 현금으로의 전환이 보장되지는 않습니다.
				투자금을 회수하기 위하여 주식의 경우 스타트업 주식거래시장(KSM)에서 거래하거나, 기업의 M&A 또는 주식시장 상장 등이 있을 때까지 기다려야 할 수 있습니다.
				채무증권이나 주식 관련 채권의 경우에도 특별한 사정이나 조건이 없는 한 만기까지 기다려야 합니다.</p><br><br><br>
				
				
				<h4>배당가능성이 낮습니다.</h4><br><br>
				<p>중개를 통해 증권을 발행하는 비상장 기업은 성장초기단계에 있는 경우가 많기 때문에, 아직 성장해야 하는 단계이기 때문에 정기 배당을 실시하는 경우가 매우 드뭅니다.
				따라서 배당수익을 기대하고 투자를 할 경우 기대한 만큼의 수익을 얻지 못할 수 있습니다.</p><br><br><br>
				
				<h4>지분 희석이 발생할 수 있습니다.</h4><br><br>
				<p>투자한 회사는 지속적으로 성장하기위하여 해당 기업의 정관에 근거하여 유상증자를 실시할 가능성이 높습니다. 
				유상증자로 인하여 투자자가 보유한 지분율은 감소될 수 있습니다.
				모든 투자에는 기대수익에 상응하는 투자위험이 있음을 유의하셔야 합니다. 투자자는 투자결과에 따라 높은 수익을 얻을 수도 있지만,
				원금의 100%를 손실할 가능성도 있습니다. 온라인소액투자중개서비스를 제공하는 회사로서 투자에 따른 손실 또는 그 위험을 보전해 드리지 못하며,
				투자에 따른 모든 책임은 각 투자자에게 귀속됩니다. 따라서 투자자가 직접 습득한 정보와 자체적인 투자의 의사결정에 따라 투자에 임하실 것을 당부 드립니다.</p><br><br><br>
		</div>
	</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>