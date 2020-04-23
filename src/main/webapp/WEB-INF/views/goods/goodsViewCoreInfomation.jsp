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
<script>
	function noUser(){
		alert('로그인 이후에 가능합니다.');
	}
	/* goodsViewDebate 페이지 */
	function commentReplyView(fgCommentsNumber){
		var content = $('.ReplyList'+fgCommentsNumber).html().trim();
		if(content == ''){
			$.ajax({
				url : '${conPath}/goodsCommentReplyView.do',
				datatype : 'html',
				data : "fgCommentsNumber="+fgCommentsNumber,
				success : function(data, status){
					$('.ReplyList'+fgCommentsNumber).html(data);
				}
			});
		}else{
			$('.ReplyList'+fgCommentsNumber).html('');
		}
	}
	function commentReplyWriteView(fgCommentsNumber){
		var content = $('.ReplyWrite'+fgCommentsNumber).html().trim();
		if(content == ''){
			$.ajax({
				url : '${conPath}/goodsCommentWriteView.do',
				datatype : 'html',
				data : "fgCommentsNumber="+fgCommentsNumber,
				success : function(data, status){
					$('.ReplyWrite'+fgCommentsNumber).html(data);
				}
			});
		}else{
			$('.ReplyWrite'+fgCommentsNumber).html('');
		}
	}
	
	function goodsInfoNavigation(infoType){
		$('.goodsInfoNavigation').children().children().removeClass('goodInfoActive');
		$('#'+infoType).addClass('goodInfoActive');
		var fundingCode = ${param.fundingCode };
		$.ajax({
			url : '${conPath}/goodsInfoNavigation.do',
			datatype : 'html',
			data : "infoType="+infoType+"&fundingCode="+fundingCode,
			success : function(data, status){
				$('#goodsViewContentWrap').html(data);
			}
		});
	}
	function goodsViewRiskPage(pageNum){
		var fundingCode = ${param.fundingCode };
		$.ajax({
			url : '${conPath}/goodsInfoNavigation.do',
			datatype : 'html',
			data : "infoType=goodsViewNews&pageNum="+pageNum+"&fundingCode="+fundingCode,
			success : function(data, status){
				$('#goodsViewContentWrap').html(data);
			}
		});	
	}
	function goodsCommentPage(pageNum){
		var fundingCode = ${param.fundingCode };
		$.ajax({
			url : '${conPath}/goodsInfoNavigation.do',
			datatype : 'html',
			data : "infoType=goodsViewDebate&pageNum="+pageNum+"&fundingCode="+fundingCode,
			success : function(data, status){
				$('#goodsViewContentWrap').html(data);
			}
		});	
	}
	$(function(){
		var fundingCode = ${param.fundingCode}; 
		$.ajax({
			url : '${conPath}/goodsInfoNavigation.do',
			datatype : 'html',
			data : "infoType=goodsViewInfo&fundingCode="+fundingCode,
			success : function(data, status){
				$('#goodsViewContentWrap').html(data);
			}
		});
		$('#userPick').click(function(){
			if($(this).html() == '♡'){
				$(this).html('♥');
			}else if($(this).html() == '♥'){
				$(this).html('♡');
			}
			var fundingCode = ${param.fundingCode};
			
			$.ajax({
				url : '${conPath}/userPick.do',
				datatype : 'html',
				data : "fundingCode="+fundingCode,
				success : function(data, status){
					$('#userPickResult').html(data);
				}
			});
			
			
		});
	});
</script>

</head>
<body>
<!-- 현재 날짜 -->
	<jsp:useBean id="today" class="java.util.Date" />
	<fmt:parseNumber value="${today.time / (1000*60*60*24)}"
		integerOnly="true" var="nowDate" />
	<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="goodsWrap">
	<section class="goodsViewWrap">
		<div id="goodsBasicInfomationWrap">
			<div class="thumnail">
				<img src="${conPath }/images/goods/${good.fundingThumbnailImage}" alt="fundingThumnail">
			</div>
			<div class="infomationTextSection">
				<h1><span>[${good.companyName }]</span> <br/>${good.fundingName }</h1>
				<ul>
					<li>
						<p><fmt:formatNumber value="${good.fundingAccountBalance }" currencySymbol="true"/>원  <span>달성목표금액 <fmt:formatNumber value="${good.fundingTargetAmount }" currencySymbol="true"/> 원 ${good.fundingTargetRate }%</span></p>
					</li>
					<fmt:parseNumber
							value="${good.fundingTargetDate.time / (1000*60*60*24)}"
							integerOnly="true" var="endDate" />
					<li>
						<p>${endDate-nowDate }일 남음 <span><fmt:formatDate value="${good.fundingTargetDate }" pattern="yyyy.MM.dd"/> 00:00 마감</span></p>
					</li>
					<li>
						<p><c:forEach var="user" items="${userList }" begin="0" end="5"><img src="${conPath }/image/profile/${user.userProfileImage}" alt="investorProfile"></c:forEach>
						<span>+${userList.size() }명 펀딩성공</span></p> 
					</li>
				</ul>
				 <div id="buttonWrap">
				 	<c:if test="${not empty sessionScope.user }">
					<a href="fundingStep1.do?fundingCode=${param.fundingCode }" class="button">FUNDING</a>
				 	</c:if>
				 	<c:if test="${empty sessionScope.user }">
					<a href="#none" onclick="noUser()" class="button">FUNDING</a>
				 	</c:if>
					<a href="goods.do?" class="button">Q&A</a>
					<c:if test="${not empty sessionScope.user}">
					<a href="#none" class="button" id="userPick"><c:if test="${not empty userAlreadyPick }">♥</c:if><c:if test="${empty userAlreadyPick }">♡</c:if></a>
					</c:if>
					<c:if test="${empty sessionScope.user }">
					<a href="#none" onclick="noUser()" class="button">♡</a>
					</c:if>
					<span id="userPickResult"></span>
				</div>
			</div>
		</div>
		
		<div id="investmentRiskNotice">
			<p class="riskNotice">투자 위험 고지비상장기업 투자는 원금 손실의 가능성이 크니 <a href="">투자 위험 안내</a>를 꼭 확인하세요.</p>
			<p class="serviceInfomation">서비스 안내개인 일반 투자자의 연간 투자 한도가 동일 발행인 기준 200만원→500만원, 누적 투자 금액 500만원→1,000만원으로 확대되었습니다.</p>
		</div>
		
		<ul class="goodsInfoNavigation">
			<li><a href="#none" onclick="goodsInfoNavigation('goodsViewInfo');" class="goodInfoActive" id="goodsViewInfo">투자정보</a></li>
			<li><a href="#none" onclick="goodsInfoNavigation('goodsViewRisk');" id="goodsViewRisk">투자위험</a></li>
			<li><a href="#none" onclick="goodsInfoNavigation('goodsViewNews');" id="goodsViewNews">새소식</a></li>
			<li><a href="#none" onclick="goodsInfoNavigation('goodsViewDebate');" id="goodsViewDebate">토론</a></li>
			<li><a href="#none" onclick="goodsInfoNavigation('goodsViewInvestor');" id="goodsViewInvestor">투자자</a></li>
		</ul>
		<div id="goodsViewContentWrap" class="coreInfomationWrap">
			<div class="company">
				<h3>기업소개</h3>
				<p>
					2014년 크리스마스 저녁 뉴스에서 방영된 아마존의 kiva 시스템을 보고 우리가 가지고있는 기술로 충분히 개발할수있다는 생각으로 
					그동안 해오던 교육용로봇사업을 같이 일하던 직원에게 무상으로 사업권을 넘기고 물류로봇사업을 시작하였습니다. 
					개발 자금이 없어 국책 과제를 신청하여 15년 개발 시작하였고 16년 프로토타입의 QR code를 인식하는 물류로봇을 개발하였고 
					16년 상용화 할수있는 물류로봇 으로 발전시켜 17년 완성된 물류로봇을 개발하였고 명실상부한 로봇의 위치인식 핵심역량인 카메라 비전 기술과 모션제어기술을 이용한 무인이동체 전문기업으로 발전하였으며, 
					물류이송로봇과 주차로봇을 연구개발 상용화한 벤처기업으로 물류이송 로봇의 total solution을 지향하는 기업으로 성장 하였습니다. 
					개발된 제품을 상용화하여 다수의 납품실적을 보유하고 있고 연구개발 과 마케팅이 조화를 이룬 물류로봇 전문기업입니다. 2021년 까지 세계 최고의 물류이송로봇 전문기업으로 성장 하고자 합니다.
				</p>
			</div>
			<div class='detail'>
				<h3>상세내용</h3>
				<img src="${conPath }/images/goods/${good.fundingExplanationFile}" alt="투자설명서">
			</div>
		</div>
		<div>
			
		</div>
	</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>