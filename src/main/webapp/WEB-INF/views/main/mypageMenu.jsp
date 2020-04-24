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
					<td colspan="2"><a href="myPageMain.do?userId=${user.userId}">My Page</a></td>					
					<td colspan="2"><a href="myPageModifyForm.do">프로필 수정</a></td>			
				</tr>
				<tr>
					<td><a href="myPageFunding.do">My Funding</a></td>	
					<td><a href="myPagePick.do">My Pick</a></td>
					<td><a href="myPagePost.do">My Post</a></td>
					<td><a href="myPageEvent.do">EVENT</a></td>			
				</tr>			
			</c:if>
			
			<c:if test="${not empty company}">			
				<tr>
					<td colspan="2"><a href="myPageMain.do?companyId=${company.companyId}">My Page</a></td>						
					<td colspan="2"><a href="myPageModifyForm.do">프로필 수정</a></td>
				</tr>
				<tr>
					<td colspan="2"><a href="myPageGoods.do">My Goods</a></td>
					<td colspan="2"><a href="fundingApplyForm.do">Goods Apply</a></td>		
				</tr>			
			</c:if>
			
			
			<!-- <tr>
				<td colspan="2"><a href="myPageMain.do">userName</a></td >
				<td colspan="2"><a href="myPageModifyForm.do">프로필 수정</a></td>
				
			</tr>  -->		
			
			<!-- <tr>
				<td><a href="myPageFunding.do">My FUNDING</a></td>
				<td><a href="myPagePick.do">PICK</a></td>
				<td><a href="myPagePost.do">POST</a></td>
				<td><a href="myPageEvent.do">EVENT</a></td>
			</tr>  -->
			
			
			<%-- <c:if test="${not empty company}">
				<tr>
					<td><a href="myPageGoods.do">내 상품 정보</a></td>
					<td><a href="fundingApplyForm.do">투자 신청</a></td>				
				</tr>
			</c:if> --%>
			
		</table>
	</div>
</body>
</html>