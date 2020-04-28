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
	<div class="investorWrap">
	<h3>현재 이 펀딩에 <span>1명</span>이 참여하였습니다.</h3>
	<c:forEach var="user" items="${doFundingUserList }">
		<table>
			<tr>
				<th>
					<c:if test="${not empty user.userProfileImage}">
                    	<img alt="userImage" src="${conPath }/images/profile/${user.userProfileImage }">
	                </c:if>                     
	                <c:if test="${user.userProfileImage eq null }">
	                	<i class="material-icons">account_circle</i>
	                </c:if>
				</th>
				<td class="investorContent">${user.userName } 님이  ${user.fundingAmount }원 투자 
					<c:if test="${user.fundingRewardAddDonation ne 0 }">
						${user.fundingRewardAddDonation } 후원
					</c:if>
					하셨습니다. </td>
				<th><fmt:formatDate value="${user.fundingDate }" pattern="yyyy-MM-dd"/></th>
			</tr>
		</table>
		
	</c:forEach>
	</div>
</body>
</html>