<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<link href="${conPath}/css/admin.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&
	family=Oswald:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(function(){
	var fileNum = 0;
	$('#fundReward').hide();
	
	$('.addRewardButton').click(function(){
		var addReward = '<table class="reward">'
			+'<tr><th></th></tr>'
			+'<tr><th>REWARD NAME</th><td><input type="text" name="goodsName" placeholder="리워드 이름을 입력하세요." required="required"></td></tr>'
			+'<tr><th>REWARD CONDITION</th><td><input type="number" name="rewardCondition" required="required" placeholder="상품가격을 입력하세요."></td></tr>'
			+'<tr><th>REWARD IMAGE</th><td><input type="file" name="fileReward'+fileNum+'"></td></tr>'
		+'</table>';
		$('#addReward').append(addReward);
		$('.deleteRewardButton').fadeIn();
		fileNum++;
	});
	
	$('.deleteRewardButton').click(function(){
		$('#addReward >table').slideUp();
		$('.deleteRewardButton').fadeOut();
	});
	$("input[name='fundingCategory']").change(function() {
		var fundingCategory = $(this).val();
		if(fundingCategory == 0){
			$('#fundReward').show();
			$('#addReward').hide();
			$('.addRewardButton').hide();
			$('.deleteRewardButton').hide();
		}else if(fundingCategory == 1){
			$('#fundReward').hide();
			$('#addReward').show();
			$('.addRewardButton').show();
			$('.deleteRewardButton').show();
			$('input[name="fundRewardName"]').val(' ');
			$('input[name="fundingInvestmentProfitRate"]').val(0);
			$('input[name="fundingInvestmentPeriod"]').val(0);
			$('.addRewardButton').click();
		}
	});
	$('form').submit(function(){
		var fundingCategory = $("input[name='fundingCategory']").val();
		if(fundingCategory == 0){
			
		}else if(fundingCategory == 1){
		}
	});
});

</script>
</head>
<body>
	<jsp:include page="../adminMenu.jsp" />
	
	<div id="contentWrap" class="adminMainWrap">
		<section id="applyWrap">
			<h1>GOODS MODIFY</h1>
			<form action="#" method="post" enctype="">
			<input type="hidden" name="companyId" value="${company.companyId }">	
				<table>
					<tr>
						<th>GOODS TYPE</th>
						<td>
							<c:if test="${fundingGoods.fundingCategory eq 0}">
							<input type="radio" name="fundingCategory" value="0" checked="checked">FUND |
							<input type="radio" name="fundingCategory" value="1">REWARD
							</c:if>
							<c:if test="${fundingGoods.fundingCategory eq 1}">
							<input type="radio" name="fundingCategory" value="0">FUND |
							<input type="radio" name="fundingCategory" value="1" checked="checked">REWARD
							</c:if>
						</td>
					<tr>
					<tr>
						<th>COMPANY NAME</th>
						<td>${fundingGoods.companyName}</td>
					</tr>
					<tr>
						<th>GOODS NAME</th>
						<td><input type="text" name="fundingName" value="${fundingGoods.fundingName}" placeholder="타이틀을 입력하세요." required="required"></td>
					</tr>
					<tr>
						<th>RECRUITMENT AMOUNT</th>
						<td><input type="number" name="fundingTargetAmount" value="${fundingGoods.fundingTargetAmount}" placeholder="희망모집금액을 입력하세요." required="required"></td>
					</tr>
					<tr>
						<th>APPLICATION PERIOD</th>
						<td><input type="date" name="fundingStartDate" value="${fundingGoods.fundingStartDate}"> ~ <input type="date" name="fundingTargetDate" value="${fundingGoods.fundingTargetDate}"></td>
					</tr>
					<tr>
						<th>COMPANY INTRODUCTION</th>
						<td><textarea name="fundingDescription">${fundingGoods.fundingDescription }</textarea></td>
					</tr>
					<tr>
						<th>GOODS THUMNAIL</th>
						<td><input type="file" name="fileThumbnail"  placeholder="썸네일 업로드(image 파일)">${fundingGoods.fundingThumbnailImage}</td>
					</tr>
					<tr>
						<th>GOODS DETAIL IMAGE</th>
						<td><input type="file" name="fileDetail" placeholder="상세이미지 업로드(image 파일)">${fundingGoods.fundingDetailImage}</td>
					</tr>
					<tr>
						<th>INVESTMENT MENUAL</th>
						<td><input type="file" name="fileExplanation" placeholder="투자설명서 업로드(image 파일)">${fundingGoods.fundingExplanationFile}</td>
					</tr>
				</table>
				<c:forEach var="reward" items="${funingrewardList}">
				<div id="fundReward">
					<table class="reward">
						<tr><th>REWARD NAME</th><td><input type="text" name="fundRewardName" value="${reward.rewardName }" placeholder="리워드 이름을 입력하세요." required="required"></td></tr>
						<tr><th>REWARD INVESTMENT</th><td><input type="number" name="fundingInvestmentProfitRate" value="${reward.rewardInterst }" placeholder="예상 이자율을 입력하세요" required="required"></td></tr>
						<tr><th>INVESTMENT PERIOD</th><td><input type="number" name="fundingInvestmentPeriod" value="${reward.fundingInvestmentPeriod }" placeholder="투자 상품 상환 기간을 적어주세요" required="required"></td></tr>
					</table>
				</div>
				</c:forEach>
				<table>
					<tr>
						<th id="buttonWrap" colspan="2">
							<input type="submit" value="APPLY" class="button">
							<input type="reset" value="RESET" class="button">
							<input type="button" value="BACK" class="button" onClick="history.back()">
							<input type="button" class="button addRewardButton" value="REWARD+">
							<input type="button" class="button deleteRewardButton" value="REWARD-">
						</th>
					</tr>
				</table>
				
			</form>
		</section>
	</div>
</body>
</html>