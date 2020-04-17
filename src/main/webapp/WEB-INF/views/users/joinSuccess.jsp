<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOIN SUCCESS</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="userWrap">
		<section class="joinSuccessWrap">
		
		<c:if test="${not empty userJoinResult}">
			<script>
				alert('${userJoinResult}');
			</script>
		</c:if>
		
		<c:if test="${not empty companyJoinResult}">
			<script>
				alert('${companyJoinResult}');
			</script>
		</c:if>
		
			
			
			<c:if test="${not empty user.userId}">	
			
				<!-- user join success -->
				<table>
					<tr>
						<th colspan='2'>${user.userName}님 가입 성공하였습니다.</th>
					</tr>
					<tr>
						<td colspan='2'><img src="${conpath}/images/profile/${user.userProfileImage}" alt="userProfileImage"></td>
					</tr>						
					<tr>
						<td>ID</td>
						<td>${user.userId}</td>
					</tr>
					<tr>
						<td>PHONE</td>
						<td>${user.userPhone}</td>
					</tr>
					<c:if test="${not empty user.userBirthday}">
						<tr>
							<td>BIRTH DAY</td>
							<td>${user.userBirthday}</td>
						</tr>
					</c:if>
					<c:if test="${not empty user.userAddressBasic}">
					<tr>
						<td>ADDRESS</td>
						<td>
							${user.userAddressBasic} ${user.userAddressDetail}
						</td>
					</tr>
					</c:if>					
					<tr>
						<td>AD</td>
						<td><c:if test="${user.userAdPhone == 1}">전화광고 수신 동의</c:if>  <c:if test="${user.userAdEmail == 1}">메일광고 수신 동의</c:if></td>
					</tr>					
					<tr>
						<td class="buttonWrap" colspan="2">
							<input type="button" value="LOGIN" class="button" onClick="location.href='${conPath}/login.do?userId=${user.userId}'">
							<input type="button" value="HOME" class="button" onClick="location.href='${conPath}/main.do'">
						</td>
					</tr>
				</table>
				
			</c:if>	
			
			<c:if test="${not empty company.companyId}">			
			
				<!-- company join success -->
				<table >
					<tr>
						<th colspan='2'>${company.companyName}님 가입 성공하였습니다.</th>
					</tr>
					<tr>
						<td colspan='2'><img src="${conpath}/images/profile/${company.companyProfileImage}" alt="userProfileImage"></td>
					</tr>
					<tr>
						<td>ID</td>
						<td>${company.companyId}</td>
					</tr>
					<tr>
						<td>PHONE</td>
						<td>${company.companyPhone}</td>
					</tr>
					<c:if test="${not empty company.companyAddressBasic}">
					<tr>
						<td>ADDRESS</td>
						<td>
							${company.companyAddressBasic} ${company.companyAdderssDetail}
						</td>
					</tr>
					</c:if>					
					<tr>
						<td class="buttonnWrap" colspan="2">
							<input type="button" value="LOGIN" class="button" onClick="location.href='${conPath}/login.do?companyId=${company.companyId}'">
							<input type="button" value="HOME" class="button" onClick="location.href='${conPath}/main.do'">
						</td>
					</tr>
				</table>
				
			</c:if>
		</section>
		</div>
		<jsp:include page="../main/footer.jsp" />
</body>
</html>