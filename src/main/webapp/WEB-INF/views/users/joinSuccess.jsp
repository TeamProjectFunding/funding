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
<link href="${conPath}/css/style.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="userWrap">
		<section class="joinSuccessWrap">
			
				<!-- user join success -->
				<table>
					<tr>
						<th colspan='2'>userName 님 가입 성공하였습니다.</th>
					</tr>
					<tr>
						<td colspan='2'><img src="userProfileImage" alt="userProfileImage"></td>
					</tr>
					<tr>
						<td>ID</td>
						<td>userId</td>
					</tr>
					<tr>
						<td>PHONE</td>
						<td>userPhone</td>
					</tr>
					<tr>
						<td>BIRTH DAY</td>
						<td>userBirthDay</td>
					</tr>
					<tr>
						<td>ADDRESS</td>
						<td>
							userAddressBasic + userAdderssDetail
						</td>
					</tr>
					<tr>
						<td>AD</td>
						<td>userAdPhone ok / userAdEmail ok</td>
					</tr>
					<tr>
						<td class="buttonWrap" colspan="2">
							<input type="button" value="LOGIN" class="button" onClick="location.href='${conPath}/login.do'">
							<input type="button" value="HOME" class="button" onClick="location.href='${conPath}/main.do'">
						</td>
					</tr>
				</table>
				
				<!-- company join success -->
				<table >
					<tr>
						<th colspan='2'>companyName 님 가입 성공하였습니다.</th>
					</tr>
					<tr>
						<td colspan='2'><img src="userProfileImage" alt="userProfileImage"></td>
					</tr>
					<tr>
						<td>ID</td>
						<td>companyId</td>
					</tr>
					<tr>
						<td>PHONE</td>
						<td>companyPhone</td>
					</tr>
					<tr>
						<td>COMPANY NUMBER</td>
						<td>companyNumber</td>
					</tr>
					<tr>
						<td>ADDRESS</td>
						<td>
							companyAddressBasic + companyAdderssDetail
						</td>
					</tr>
					<tr>
						<td>AD</td>
						<td>companyAdPhone ok / companyAdEmail ok</td>
					</tr>
					<tr>
						<td class="buttonnWrap" colspan="2">
							<input type="button" value="LOGIN" class="button" onClick="location.href='${conPath}/login.do'">
							<input type="button" value="HOME" class="button" onClick="location.href='${conPath}/main.do'">
						</td>
					</tr>
				</table>
		</section>
		</div>
		<jsp:include page="../main/footer.jsp" />
</body>
</html>