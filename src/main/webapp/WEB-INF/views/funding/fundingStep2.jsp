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
	$(function(){
		$('#selectBox').change(function(){
			var selectWord = $(this).val();
			if(selectWord == 'noSelect'){
				$('.rewardProduct').html('');
				$('.rewardDeliveryDate').html('');
			}else{
				$.ajax({
					url : '${conPath}/selectReward.do',
					datatype : 'json',
					data : "rewardCode="+selectWord,
					success : function(data, status){
						alert(data);
						var rewardProduct = '${rewardProduct}';
						$('.rewardProduct').html(rewardDeliveryDate);
						$('.rewardDeliveryDate').html(rewardProduct);
					}
				});
			}
		});
		
	});
</script>
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	
	<div id="contentWrap" class="fundingWrap">
	<section id="fundingWrap">
		<div id="fundingStep" class="fundingStep2">
			<ul id="fundingStep">
				<li>투자 위험 안내 확인/동의</li>
				<li><span>예치금 확인/투자금액 입력</span></li>
				<li>투자 내역 확인 및 완료</li>
			</ul>
			<h1>예치금 확인/투자금액 입력</h1>
			<form action="fundingComplate.do">
				<input type="hidden" name="fundingCategory" value="${good.fundingCategory }">
				<input type="hidden" name="fundingCode" value="${good.fundingCode }">
				<input type="hidden" name="fundingTargetDate" value="${good.fundingTargetDate }">
				<input type="hidden" name="userId" value="${user.userId}">
				<table>
					<tr>
						<th colspan="2">${good.fundingName }</th>
					</tr>
					<!-- 리워드일 경우 -->
					<c:if test="${good.fundingCategory eq 1 }"></c:if>
					<tr>
						<th>리워드 선택</th>
						<td>
							<select id="selectBox" name="rewardCode">
								<option value="noSelect">선택하세요</option>
								<c:forEach var="reward" items="${rewardList }">
									<option value="${reward.rewardCode }"> <fmt:formatNumber value="${reward.rewardCondition }" currencySymbol="true"/>원 투자하기</option>
								</c:forEach>
							</select>
						</td>
					</tr>
					<tr>
						<th>리워드 상품</th>
						<td class="rewardProduct">
						</td>
					</tr>
					<tr>
						<th>리워드 제공 예상일</th>
						<td class="rewardDeliveryDate">
						</td>
					</tr>
					<tr>
						<th>추가 후원금</th>
						<td><input type="number" name="fundingRewardAddDonation" placeholder="후원금액을 입력하세요." required="required"></td>
					</tr>
					<!-- 투자일 경우 -->
					<c:if test="${good.fundingCategory eq 0 }">
					<tr>
						<th>투자금액 입력</th>
						<td><input type="number" name="fundingAmount" placeholder="투자금액을 입력하세요." required="required"></td>
					</tr>
					<tr>
						<th>투자가능 금액</th> 
						<td><fmt:formatNumber value="${user.userAccountBalance }" currencySymbol="true"/> 원</td>
					</tr>
					</c:if>
					<tr>
						<th id="buttonWrap" colspan="2">
						<input type="submit" value="SUBMIT" class="button">
						<input type="reset" value="RESET" class="button">
						<input type="button" value="BACK" class="button" onClick="location.href='${conPath}/fundinfStep1.do'">
						</th>
					</tr>
				</table>
			</form>
		</div>
	</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>