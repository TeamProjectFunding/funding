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
	<link href="${conPath}/css/admin.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&
	family=Oswald:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
	<jsp:include page="../adminMenu.jsp" />
	<div id="contentWrap" class="adminMainWrap">
		<section id="applyViewWrap">
			<h1>APPLY</h1>
			<form action="adminApply.do?fundingCode=${fundingDetail.fundingCode}">
				<table>
					<tr>
						<th>COMPANY NAME</th>
						<td>${fundingDetail.companyName}</td>
					</tr>
					<tr>
						<th>GOODS NAME</th>
						<td>${fundingDetail.fundingName}</td>
					</tr>
					<tr>
						<th>RECRUITMENT AMOUNT</th>
						<td><fmt:formatNumber value="${fundingDetail.fundingTargetAmount}" type="currency" currencySymbol="￦"/></td>
					</tr>
					<tr>
						<th>APPLICATION PERIOD</th>
						<td>${fundingDetail.fundingStartDate} ~ ${fundingDetail.fundingTargetDate}</td>
					</tr>
					<tr>
						<th>COMPANY INTRODUCTION</th>
						<td>${fundingDetail.companyIntroduction}</td>
					</tr>
					<tr>
						<th>GOODS THUMNAIL</th>
						<td><img src="" alt="thumnail"></td>
					</tr>
					<tr>
						<th>INVESTMENT MENUAL</th>
						<td><img src="" alt="iinvestment menual"></td>
					</tr>
				</table>
				<table class="reward">
					<tr>
						<th>REWARD NAME</th>
						<td>${fundingDetail.fundingName}</td>
					</tr>
					<tr>
						<th>REWARD CONDITION</th>
						<td>0 ~ 100,000 won</td>
					</tr>
					<tr>
						<th>REWARD IMAGE</th>
						<td><img src="" alt="reward img"></td>
					</tr>
				</table>
				<table>
					<tr>
						<th id="buttonWrap" colspan="2">
							<input type="submit" value="APPLY" class="button">
							<input type="button" value="REJECK" class="button" onClick="location.href='${conPath}/adminReject.do?fundingCode=${fundingDetail.fundingCode}'">
							<input type="button" value="BACK" class="button" onClick="history.back()">
						</th>
					</tr>
				</table>
			</form>
		</section>
	</div>
</body>
</html>