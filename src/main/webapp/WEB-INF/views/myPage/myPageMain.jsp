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
<c:if test="${not empty userModifyResult}">
	<script>
		alert('${userModifyResult}');
	</script>
</c:if>
<c:if test="${not empty companyModifyResult}">
	<script>
		alert('${companyModifyResult}');
	</script>
</c:if>


	<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="myPageWrap">
	<section class="myPageMainWrap" >
		<h1>MYPAGE</h1>
		
		<div class="myPageProfile">
		
			<c:if test="${not empty sessionScope.user.userProfileImage || not empty sessionScope.company.companyProfileImage}">
				<img src="${conPath}/images/profile/${user.userProfileImage}${company.companyProfileImage}" alt="profile" >
			</c:if>							
							
			<c:if test="${sessionScope.user.userProfileImage eq null && sessionScope.company.companyProfileImage eq null}">
				<i class="material-icons">account_circle</i>
			</c:if>				
			
		</div>
		
		<table>
			<tr>
				<td>${userDetail.userName}${companyDetail.companyName}</td>
			</tr>
			<tr>
				<td>${userDetail.userPhone}${companyDetail.companyPhone}</td>
			</tr>
			<tr>
				<td>${userDetail.userId}${companyDetail.companyId}</td>
			</tr>
			<tr>
				<td id="buttonWrap">
					<a href="" class="button acountEnrollmentButton">계좌등록</a>
					<a href="${conPath}/myPageModifyForm.do?userId=${user.userId}&companyId=${company.companyId}" class="button">프로필수정</a>
				</td>
			</tr>
		</table>
		
		<c:if test="${not empty user}">
			<table class="userActivity">
				<tr>
					<th>My FUNDING</th>
					<th>PICK</th>
					<th>POST</th>
					<th>EVENT</th>
				</tr>
				<tr>
					<td><a href="${conPath}/myPageFunding.do">${userFundingTotalCnt}</a></td>
					<td><a href="${conPath}/myPagePick.do?userId=${user.userId}">${userDetail.userPickCount}</a></td>
					<td><a href="">0</a></td>
					<td><a href="">0</a></td>
				</tr>
			</table>
		</c:if>
		
		<c:if test="${not empty company}">
			<table class="companyActivity">
				<tr>
					<th>My GOODS</th>
					<th>APPLY</th>
				</tr>
				<tr>
					<td><a href="">0</a></td>
					<td><a href="">0</a></td>
				</tr>
			</table>
		</c:if>
		<script>
			$(function(){
				$('.acountEnrollmentButton').click(function(){
					$('#myAcountEnrollment').addClass('openAcountEnrollment');
				});
				$('.closeButton').click(function(){
					$('#myAcountEnrollment').removeClass('openAcountEnrollment');
				});
				
			});
		</script>
		<div class="myAccountWrap">
			<h1>MY ACCOUNT</h1>
			<table>
				<tr>
					<th>GRADE</th>
					<td>일반투자자</td>
				</tr>
				<tr>
					<th>BANK</th>
					<td>카카오뱅크</td>
				</tr>
				<tr>
					<th>ACCOUNT NUMBER</th>
					<td>3333-33333-3333</td>
				</tr>
				<tr>
					<th>BALANCE</th>
					<td>1,000,000 원</td>
				</tr>
				<tr>
					<th colspan="2" id="buttonWrap">
						<a href="#none" class="button dipositFormButton">입금하기</a>
						<a href="#none" class="button withdrawFormButton">출금하기</a>
					</th>
				</tr>
				
				<tr class="dipositForm accountForm">
					<td><input type="number" name="diposit" placeholder="금액을 입력하세요."></td>
					<th id="buttonWrap">
						<a href="#none" class="button">입금</a>
					</th>
				</tr>
				<tr class="withdrawForm accountForm">
					<td><input type="number" name="withdraw" placeholder="금액을 입력하세요."></td>
					<th id="buttonWrap">
						<a href="#none" class="button">출금</a>
					</th>
				</tr>
				<tr class="accountFormMessege ">
					<th class="accountMessege">100,000 원 입금되었습니다.</th>
				</tr>
			</table>
			
			<div class="dispositWithdrawal">
				<table>
					<tr>
						<th>DATE</th>
						<th>CONTENT</th>
						<th>AMOUNT</th>
						<th>TYPE</th>
						<th>BALANCE</th>
					</tr>
					<tr>
						<td>2020-04-24</td>
						<td> 1번 펀딩 상품 이자지급</td>
						<td>200 원</td>
						<td>입금</td>
						<td>100,200 원</td>
					</tr>
					<tr>
						<td>2020-04-24</td>
						<td> 1번 펀딩 상품 이자지급</td>
						<td>200 원</td>
						<td>입금</td>
						<td>100,200 원</td>
					</tr>
					<tr>
						<td>2020-04-24</td>
						<td> 1번 펀딩 상품 이자지급</td>
						<td>200 원</td>
						<td>입금</td>
						<td>100,200 원</td>
					</tr>
					<tr>
						<td>2020-04-24</td>
						<td> 1번 펀딩 상품 이자지급</td>
						<td>200 원</td>
						<td>입금</td>
						<td>100,200 원</td>
					</tr>
					<tr>
						<td>2020-04-24</td>
						<td> 1번 펀딩 상품 이자지급</td>
						<td>200 원</td>
						<td>입금</td>
						<td>100,200 원</td>
					</tr>
					<tr>
						<td>2020-04-24</td>
						<td> 1번 펀딩 상품 이자지급</td>
						<td>200 원</td>
						<td>입금</td>
						<td>100,200 원</td>
					</tr>
					<tr>
						<td>2020-04-24</td>
						<td> 1번 펀딩 상품 이자지급</td>
						<td>200 원</td>
						<td>입금</td>
						<td>100,200 원</td>
					</tr>
					<tr>
						<td>2020-04-24</td>
						<td> 1번 펀딩 상품 이자지급</td>
						<td>200 원</td>
						<td>입금</td>
						<td>100,200 원</td>
					</tr>
					<tr>
						<td>2020-04-24</td>
						<td> 1번 펀딩 상품 이자지급</td>
						<td>200 원</td>
						<td>입금</td>
						<td>100,200 원</td>
					</tr>
					<tr>
						<td>2020-04-24</td>
						<td> 1번 펀딩 상품 이자지급</td>
						<td>200 원</td>
						<td>입금</td>
						<td>100,200 원</td>
					</tr>
					<tr>
						<td>2020-04-24</td>
						<td> 1번 펀딩 상품 이자지급</td>
						<td>200 원</td>
						<td>입금</td>
						<td>100,200 원</td>
					</tr>
					
				</table>
			</div>
		</div>
		<script>
			$(function(){
				$('.dipositFormButton').click(function(){
					$('.dipositForm').slideDown();
					$('.withdrawForm').hide();
				});
				$('.withdrawFormButton').click(function(){
					$('.dipositForm').hide();
					$('.withdrawForm').slideDown();
				});
			});
		</script>
	</section>
	</div>
	<jsp:include page="myAcountEnrollment.jsp" />
	<jsp:include page="../main/footer.jsp" />
</body>
</html>