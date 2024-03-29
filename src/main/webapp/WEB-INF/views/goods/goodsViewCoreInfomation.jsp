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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
	function noUser(){
		swal("로그인 이후에 가능합니다.", {
			  buttons: false,
		});
	}
	/* 코멘트 쓰기 뷰 나오기 */
	function commentWriteView(){
		$('.commentContentArea').slideToggle('1000','swing');		
	};
	/* 코멘트 답글 보기 */
	function commentReplyView(fgCommentsNumber){
		$.ajax({
			url : '${conPath}/goodsCommentReplyView.do',
			datatype : 'html',
			data : "fgCommentsNumber="+fgCommentsNumber,
			success : function(data, status){
				$('.ReplyList'+fgCommentsNumber).html(data);
			}
		});
		$('.ReplyList'+fgCommentsNumber).slideToggle('1000','swing');	
	}
	
	
	/* 코멘트 쓰기 실행 */
	function fgCommentsWrite(){
		var fundingCode = ${param.fundingCode};
		var userId = '${user.userId}';
		var fgCommentsContent = $('.fgCommentsContent').val();
		
		$.ajax({
			url : '${conPath}/goodsCommentWrite.do',
			datatype : 'html',
			data : "userId="+userId+"&fundingCode="+fundingCode+"&fgCommentsContent="+fgCommentsContent,
			success : function(data, status){
				goodsInfoNavigation('goodsViewDebate');
			}
		});
		
	}
	/* 코멘트 답글 쓰기 실행 */
	function fgCommentsReplyWrite(fgCommentsNumber){
		var fgCommentsReplyContent = $('.fgCommentsReplyContent'+fgCommentsNumber).val();
		var userId = '${user.userId}';
		$.ajax({
			url : '${conPath}/goodsCommentReplyWrite.do',
			datatype : 'html',
			data : "userId="+userId+"&fgCommentsNumber="+fgCommentsNumber+"&fgCommentsReplyContent="+fgCommentsReplyContent,
			success : function(data, status){
				goodsInfoNavigation('goodsViewDebate');
			}
		});
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
		goodsInfoNavigation('goodsViewInfo');
		$('#userPick').click(function(){
			if($(this).html() == '♡'){
				$(this).html('<span class="userPick">♥</span>');
			}else if($(this).html() == '<span class="userPick">♥</span>'){
				$(this).html('♡');
			}
			var fundingCode = ${param.fundingCode};
			
			$.ajax({
				url : '${conPath}/userPick.do',
				datatype : 'html',
				data : "fundingCode="+fundingCode,
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
					<li class="userProfileImages">
						<p>
							<c:forEach var="user" items="${userList }" begin="0" end="5">
								 <c:if test="${sessionScope.user.userProfileImage != ''}">
									<img src="${conPath }/images/profile/${user.userProfileImage}" alt="investorProfile">
								</c:if>
								 <c:if test="${sessionScope.user.userProfileImage == ''}">
									<i class="material-icons">account_circle</i>
								</c:if>
							</c:forEach>
						<span>+${userList.size() }명 펀딩성공</span>
						</p> 
					</li>
				</ul>
				 <div id="buttonWrap">
				 	<c:if test="${not empty sessionScope.user }">
					<a href="fundingStep1.do?fundingCode=${param.fundingCode }" class="button">FUNDING</a>
				 	</c:if>
				 	<c:if test="${empty sessionScope.user }">
					<a href="#none" onclick="noUser()" class="button">FUNDING</a>
				 	</c:if>
					<a href="${conPath }/goodsQnaList.do?fundingCode=${param.fundingCode }" class="button">Q&A</a>
					<c:if test="${not empty sessionScope.user}">
					<a href="#none" class="button" id="userPick"><c:if test="${not empty userAlreadyPick }"><span class="userPick">♥</span></c:if><c:if test="${empty userAlreadyPick }">♡</c:if></a>
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
		</div>
		<div>
			
		</div>
	</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>