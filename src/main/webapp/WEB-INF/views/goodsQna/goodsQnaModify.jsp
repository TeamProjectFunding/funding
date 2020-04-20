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
	<link href="${conPath}/css/common.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&
	family=Oswald:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="fundingWrap">
		<section id="applyWrap">
			<h1>APPLY</h1>
			<form action="fundingApply.do" method="post" enctype="">
				<table>
					<tr>
						<th>COMPANY NAME</th>
						<td>company name</td>
					</tr>
					<tr>
						<th>GOODS NAME</th>
						<td><input type="text" name="goodsName" placeholder="타이틀을 입력하세요." required="required"></td>
					</tr>
					<tr>
						<th>RECRUITMENT AMOUNT</th>
						<td><input type="number" name="goodsName" placeholder="희망모집금액을 입력하세요." required="required"></td>
					</tr>
					<tr>
						<th>APPLICATION PERIOD</th>
						<td><input type="date" name="applicationStart"> ~ <input type="date" name="applicationEnd"></td>
					</tr>
					<tr>
						<th>COMPANY INTRODUCTION</th>
						<td><textarea name="companyIntroductuion"></textarea></td>
					</tr>
					<tr>
						<th>GOODS THUMNAIL</th>
						<td><input type="file" placeholder="썸네일 업로드(image 파일)"></td>
					</tr>
					<tr>
						<th>INVESTMENT MENUAL</th>
						<td><input type="file" placeholder="투자설명서 업로드(image 파일)"></td>
					</tr>
				</table>
				<div id="addReward">
					
				</div>
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
				<script>
					$(function(){
						var addReward = '<table class="reward">'
											+'<tr><th></th></tr>'
											+'<tr><th>REWARD NAME</th><td><input type="text" name="goodsName" placeholder="리워드 이름을 입력하세요." required="required"></td></tr>'
											+'<tr><th>REWARD CONDITION</th><td><input type="number"> ~ <input type="number"></td></tr>'
											+'<tr><th>REWARD IMAGE</th><td><input type="file" name="rewardImage"></td></tr>'
										+'</table>';
						$('.addRewardButton').click(function(){
							$('#addReward').append(addReward);
							$('.deleteRewardButton').fadeIn();
						});
						
						$('.deleteRewardButton').click(function(){
							$('#addReward >table').slideUp();
							$('.deleteRewardButton').fadeOut();
						});
					});
				</script>
			</form>
		</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>