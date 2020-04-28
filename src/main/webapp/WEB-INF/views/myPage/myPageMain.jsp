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
		
			<c:if test="${not empty sessionScope.user && sessionScope.user.userProfileImage ne null}">
				<img src="${conPath}/images/profile/${user.userProfileImage}" alt="profile" >
			</c:if>							
			<c:if test="${not empty sessionScope.company && sessionScope.company.companyProfileImage ne null}">
				<img src="${conPath}/images/profile/${company.companyProfileImage}" alt="profile" >
			</c:if>							
							
			<c:if test="${(not empty sessionScope.user && sessionScope.user.userProfileImage eq null) || (not empty sessionScope.company && sessionScope.company.companyProfileImage eq null)}">
				<i class="material-icons">account_circle</i>
			</c:if>				
			
		</div>
		
		<table>
			<tr>
				<td>${user.userName}${company.companyName}</td>
			</tr>
			<tr>
				<td>${user.userPhone}${company.companyPhone}</td>
			</tr>
			<tr>
				<td>${user.userId}${company.companyId}</td>
			</tr>
			<tr>
				<td id="buttonWrap">
					<a href="#none" class="button acountEnrollmentButton">계좌
					<c:if test="${(not empty sessionScope.user && user.userBankName == '') || (not empty sessionScope.company && company.companyBankName == '')}">
					등록
					</c:if>
					<c:if test="${(not empty sessionScope.user && user.userBankName != '') || (not empty sessionScope.company && company.companyBankName != '') }">
					수정
					</c:if></a>
					<a href="${conPath}/myPageModifyForm.do?userId=${user.userId}&companyId=${company.companyId}" class="button">프로필수정</a>
				</td>
			</tr>
		</table>
		
		<c:if test="${not empty sessionScope.user}">
			<table class="userActivity">
				<tr>
					<th>My FUNDING</th>
					<th>PICK</th>
					<th>POST</th>
					<th>EVENT</th>
				</tr>
				<tr>
					<td><a href="${conPath}/myPageFunding.do?userId=${user.userId}">${userFundingTotalCnt}</a></td>
					<td><a href="${conPath}/myPagePick.do?userId=${user.userId}">${user.userPickCount}</a></td>
					<td><a href="${conPath}/myPagePost.do?userId=${user.userId}">${myPostTotalCnt}</a></td>
					<td><a href="">0</a></td>
				</tr>
			</table>
		</c:if>
		
		<c:if test="${not empty sessionScope.company}">
			<table class="companyActivity">
				<tr>
					<th>My GOODS</th>
					<th>APPLY</th>
				</tr>
				<tr>
					<td><a href="myPageGoods.do?companyId=${company.companyId}">${companyEndFundingCount }</a></td>
					<td>
						<c:if test="${company.companyInFunding eq 0 }"><a href="fundingApplyForm.do">Do it</a></c:if>
						<c:if test="${company.companyInFunding eq 1 }"><a href="#none" onclick="auditFunding()">심사중</a></c:if>
						<c:if test="${company.companyInFunding eq 2 }"><a href="#none" onclick="ongoingFunding()">진행중</a></c:if>
					</td>
				</tr>
			</table>
		</c:if>
		<script>
		/*심사중 펀딩 보기*/
		function auditFunding(){
			 var companyId = '${company.companyId}';
			 $.ajax({
                url : '${conPath}/auditFunding.do',
                datatype : 'html',
                data : "companyId="+companyId,
                success : function(data, status){
                   $('#myGoodsDetail').html(data);
                }
             });
			 $('#myGoodsDetail').addClass('openMypageGoodsView');
		}
		/*진행중 펀딩 보기*/
		function ongoingFunding(){
			 var companyId = '${company.companyId}';
			 $.ajax({
                 url : '${conPath}/ongoingFunding.do',
                 datatype : 'html',
                 data : "companyId="+companyId,
                 success : function(data, status){
                    $('#myGoodsDetail').html(data);
                 }
              });
			 $('#myGoodsDetail').addClass('openMypageGoodsView');
		}
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
					<td><c:if test="${not empty sessionScope.company }">회사 회원</c:if>
					<c:if test="${not empty sessionScope.user}">${user.userGradeName }</c:if></td>
				</tr>
				<c:if test="${company.companyBankName eq null && user.userBankName eq null}">
				<tr>
					<td rowspan="7" colspan="2">계좌 등록 먼저 해주세요.</td>
				</tr>
				</c:if>
				<c:if test="${company.companyBankName ne null || user.userBankName ne null}">
				<tr>
					<th>BANK</th>
					<td>${user.userBankName }${company.companyBankName }</td>
				</tr>
				<tr>
					<th>DEPOSITER</th>
					<td>${user.userName }${company.companyBankDepositor }</td>
				</tr>
				<tr>
					<th>ACCOUNT NUMBER</th>
					<td>${user.userAccountNumber }${company.companyAccountNumber }</td>
				</tr>
				<tr>
					<th>BALANCE</th>
					<td>
					<c:if test="${not empty sessionScope.company }"><fmt:formatNumber value="${company.companyAccountBalance }" currencySymbol="true" /></c:if>
					<c:if test="${not empty sessionScope.user }"><fmt:formatNumber value="${user.userAccountBalance }" currencySymbol="true" /></c:if>
					원</td>
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
						<a href="#none" class="button" id="dipositButton">입금</a>
					</th>
				</tr>
				<tr class="withdrawForm accountForm">
					<td><input type="number" name="withdraw" placeholder="금액을 입력하세요."></td>
					<th id="buttonWrap">
						<a href="#none" class="button" id="withdrawButton">출금</a>
					</th>
				</tr>
				<tr class="accountFormMessege ">
					<th class="accountMessege"></th>
				</tr>
				</c:if>
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
					<c:forEach var="DNM" items="${DNMList }">
					<tr>
						<td><fmt:formatDate value="${DNM.dNWDate }" pattern="yyyy-MM-dd"/></td>
						<td>${DNM.dNWContent}</td>
						<td><fmt:formatNumber value="${DNM.dNWAmount }" currencySymbol="true"/>원</td>
						<td><c:if test="${DNM.dNWType eq 0}">입금</c:if><c:if test="${DNM.dNWType eq 1}">출금</c:if></td>
						<td><fmt:formatNumber value="${DNM.dNWBalance }" currencySymbol="true"/>원</td>
					</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<script>
			$(function(){
				$('.dipositForm').hide();
				$('.withdrawForm').hide();
				$('.dipositFormButton').click(function(){
					$('.dipositForm').slideDown();
					$('.withdrawForm').hide();
				});
				$('.withdrawFormButton').click(function(){
					$('.dipositForm').hide();
					$('.withdrawForm').slideDown();
				});
				$('#dipositButton').click(function(){
					var dNWAmount = Number($('input[name="diposit"]').val());
					if(dNWAmount < 1){
						alert('0원 이상을 입력해주세요');
					}else{
						var userId = '${user.userId}';
						var companyId = '${company.companyId}';
						var dNWType = 0;
						var dNWBalance = Number('${user.userAccountBalance}${company.companyAccountBalance}');
						 $.ajax({
	                	     url : '${conPath}/depositMypage.do',
		                     datatype : 'html',
		                     data : "companyId="+companyId+"&userId="+userId+"&dNWAmount="+dNWAmount
	    	                 +"&dNWType="+dNWType,
	        	             success : function(data, status){
	            	            $('.accountMessege').html(data);
	                	     }
		                  });
						 setTimeout(function(){
							 location.reload();
						 },1000);
					}
				});
				$('#withdrawButton').click(function(){
					var dNWAmount = Number($('input[name="withdraw"]').val())*-1;
					var dNWBalance = Number('${user.userAccountBalance}${company.companyAccountBalance}');
					if(dNWAmount>0){
						alert('0원 이상을 입력해주세요');
					}else if(dNWAmount > dNWBalance){
						alert('계좌 잔액보다 작은 값을 입력해주세요');
					}else{
						var userId = '${user.userId}';
						var companyId = '${company.companyId}';
						var dNWType = 1;
						 $.ajax({
	            	         url : '${conPath}/withdrawMypage.do',
	                	     datatype : 'html',
		                     data : "companyId="+companyId+"&userId="+userId+"&dNWAmount="+dNWAmount
		                     +"&dNWType="+dNWType,
	    	                 success : function(data, status){
	        	                $('.accountMessege').html(data);
	            	         }
	                	  });
						 setTimeout(function(){
							 location.reload();
						 },1000);
					}
				});
				
			});
		</script>
	</section>
	</div>
	<jsp:include page="myPageGoodsDetail.jsp"/>
	<jsp:include page="myAcountEnrollment.jsp" />
	<jsp:include page="../main/footer.jsp" />
</body>
</html>