<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
function alreadyFunding(){
	swal("펀딩 신청은 하나씩만 가능합니다.", {
		  buttons: false,
	});
}
</script>
</head>
<body>
	<div id="mypageWrap" class="popupWrap mypageMenuWrap">
		<table>		
			
				<tr>
					<th colspan="4">
					
						<c:if test="${not empty sessionScope.user.userProfileImage || not empty sessionScope.company.companyProfileImage}">
							<img src="${conPath}/images/profile/${user.userProfileImage}${company.companyProfileImage}" alt="profile" >
						</c:if>							
								
						<c:if test="${sessionScope.user.userProfileImage eq null && sessionScope.company.companyProfileImage eq null}">
								<i class="material-icons">account_circle</i>
						</c:if>					
						
					</th>
				</tr>
			
						
			
			<c:if test="${not empty user}">
				<tr>
					<td colspan="2"><a href="myPageMain.do?userId=${user.userId}">${user.userName}님</a></td>					
					<td colspan="2"><a href="myPageModifyForm.do?userId=${user.userId}">프로필 수정</a></td>			
				</tr>
				<tr>
					<td><a href="myPageFunding.do?userId=${user.userId }">FUNDING</a></td>	
					<td><a href="myPagePick.do?userId=${user.userId}">PICK</a></td>
					<td><a href="myPagePost.do?userId=${user.userId}">POST</a></td>
					<td><a href="myPageEvent.do">EVENT</a></td>			
				</tr>			
			</c:if>
			
			<c:if test="${not empty company}">			
				<tr>
					<td colspan="2"><a href="myPageMain.do?companyId=${company.companyId}">${company.companyName}</a></td>						
					<td colspan="2"><a href="myPageModifyForm.do?companyId=${company.companyId}">프로필 수정</a></td>
				</tr>
				<tr>
					<td colspan="2"><a href="myPageGoods.do?companyId=${company.companyId}">My Goods</a></td>
					<td colspan="2">
					<c:if test="${company.companyInFunding eq 0 }">
					<a href="fundingApplyForm.do">Goods Apply</a>
					</c:if>
					<c:if test="${company.companyInFunding ne 0 }">
					<a href="#none" onclick="noCompany();">Goods Apply</a>
					</c:if>
					</td>		
				</tr>			
			</c:if>
		</table>
	</div>
</body>
</html>