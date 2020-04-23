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
<link href="${conPath}/css/style.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="myPageWrap">
	<section class="myPageMainWrap" >
		<h1>MYPAGE</h1>
		<div class="myPageProfile">
			<i class="material-icons">account_circle</i>
		</div>
		<table>
			<tr>
				<td>USER NAME</td>
			</tr>
			<tr>
				<td>010-0000-0000</td>
			</tr>
			<tr>
				<td>email@ email.com</td>
			</tr>
			<tr>
				<td id="buttonWrap">
					<a href="" class="button">계좌등록</a>
					<a href="" class="button">프로필수정</a>
				</td>
			</tr>
		</table>
		<!-- table class="userActivity">
			<tr>
				<th>FUNDING</th>
				<th>PICK</th>
				<th>POST</th>
				<th>EVENT</th>
			</tr>
			<tr>
				<td><a href="">0</a></td>
				<td><a href="">0</a></td>
				<td><a href="">0</a></td>
				<td><a href="">0</a></td>
			</tr>
		</table -->
		
		<table class="companyActivity">
			<tr>
				<th>GOODS</th>
				<th>APPLY</th>
			</tr>
			<tr>
				<td><a href="">0</a></td>
				<td><a href="">0</a></td>
			</tr>
		</table>
	</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>